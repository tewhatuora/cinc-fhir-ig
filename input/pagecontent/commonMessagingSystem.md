The Common Messaging System (CMS) provides a centralised FHIR API for sending SMS and email communications to patients and practitioners. It supports both direct message content and template-based messaging with parameterised placeholders.

### FHIR Resources

| Resource | Purpose |
| -------- | ------- |
| [CommunicationRequest](./StructureDefinition-CMSCommunicationRequest.html) | A request to send a communication (SMS or email) |
| [Communication](./StructureDefinition-CMSCommunication.html) | A record of a communication that was sent |
| [TemplateDocumentReference](./StructureDefinition-TemplateDocumentReference.html) | A reusable message template with placeholders and parameter definitions |

### Messaging Modes

There are two ways to send a message:

1. **Direct message** — The message body is provided inline in the CommunicationRequest payload.
2. **Template-based message** — The CommunicationRequest references a TemplateDocumentReference containing the message body with placeholders, and supplies parameter values to fill them.

A CommunicationRequest must include either a `message-body` or a `message-template` payload (enforced by the `cms-body-or-template` invariant). Both may be provided.

### CommunicationRequest Payload Slicing

The CommunicationRequest payload is sliced by an extension that identifies the logical type of each payload element. The discriminator is the value of the `cms-payload-type-extension`.

| Slice | Cardinality | Description |
| ----- | ----------- | ----------- |
| `message-body` | 0..1 | The message content as a `text/plain` attachment. Used for direct messaging. |
| `message-template` | 0..1 | A reference to a [TemplateDocumentReference](./StructureDefinition-TemplateDocumentReference.html) containing the message template. |
| `message-parameters` | 0..1 | A JSON attachment (`application/json`) containing key-value pairs to substitute into template placeholders. |
| `attachment-file` | 0..* | File attachments (e.g. PDFs) to include with the message. Supports an optional `hnz-attachment-extension` for disposition and content ID. |

#### Direct message example

```
// Message body provided inline
* payload[message-body].extension[payloadType].valueCode = #body
* payload[message-body].contentAttachment.contentType = #text/plain
* payload[message-body].contentAttachment.data = "<base64-encoded message>"
```

See: [Email without template](./CommunicationRequest-EmailCommunicationRequestWithoutTemplateExample.html) | [SMS without template](./CommunicationRequest-SMSCommunicationRequestWithoutTemplateExample.html)

#### Template-based message example

```
// Reference to a template
* payload[message-template].extension[payloadType].valueCode = #template
* payload[message-template].contentReference = Reference(DocumentReference/MyTemplate)

// Parameter values to fill template placeholders
* payload[message-parameters].extension[payloadType].valueCode = #parameters
* payload[message-parameters].contentAttachment.contentType = #application/json
* payload[message-parameters].contentAttachment.data = "<base64-encoded JSON key-value pairs>"
```

See: [Email with template](./CommunicationRequest-EmailCommunicationRequestWithTemplateExample.html) | [SMS with template](./CommunicationRequest-SMSCommunicationRequestWithTemplateExample.html)

### TemplateDocumentReference Content Slicing

The TemplateDocumentReference content is sliced using the same extension-based pattern. The discriminator is the value of the `cms-template-content-type-extension`.

| Slice | Cardinality | Description |
| ----- | ----------- | ----------- |
| `template-message-body` | 1..1 | The template body as a `text/html` attachment. Contains `{% raw %}{{placeholder}}{% endraw %}` markers that are substituted at send time. |
| `template-message-parameters` | 0..1 | A JSON schema (`application/json`) defining the parameters the template expects, including types, descriptions, and which are required. |
| `template-attachment-file` | 0..* | Static file attachments bundled with the template. |

#### Template body

The template body is HTML containing placeholder markers using double-brace syntax:

{% raw %}
```html
<p>Dear {{PatientName}},</p>
<p>You are invited to a screening on {{AppointmentDate}} at {{AppointmentTime}}.</p>
```
{% endraw %}

#### Template parameter schema

The `template-message-parameters` content holds a JSON schema that documents the expected parameters:

```json
{
  "title": "Welcome Message Schema",
  "type": "object",
  "properties": {
    "firstName": {
      "type": "string",
      "description": "The recipient's first name.",
      "required": true
    },
    "lastName": {
      "type": "string",
      "description": "The recipient's last name.",
      "required": false
    }
  },
  "required": ["firstName"]
}
```

See: [Template example](./DocumentReference-EmailCommunicationTemplateExample.html)

### Communication Resource

The [Communication](./StructureDefinition-CMSCommunication.html) resource records the outcome of a sent message. It uses the same payload slicing pattern as CommunicationRequest for `message-body` and `attachment-file` slices, and links back to the originating CommunicationRequest via `basedOn`.

| Slice | Cardinality | Description |
| ----- | ----------- | ----------- |
| `message-body` | 0..1 | The rendered message content that was sent. |
| `attachment-file` | 0..* | Any file attachments that were included. |

See: [Email communication](./Communication-EmailCommunicationExample.html) | [SMS communication](./Communication-SMSCommunicationExample.html)

### Extensions

All CMS resources use named extensions for metadata:

| Extension | Context | Description |
| --------- | ------- | ----------- |
| `Campaign` | CommunicationRequest, Communication | Campaign code and name for tracking. |
| `ContactPoint` | CommunicationRequest, Communication | The `to` and `from` contact points (email address, phone number). Required. |
| `CallbackUrl` | CommunicationRequest, Communication | A webhook URL for delivery status callbacks. |
| `Reply` | CommunicationRequest, Communication | SMS reply configuration — whether a reply is expected and a webhook URL. |
| `StatusDateTime` | Communication | Timestamp of the last status update. |

### Workflow

<figure>
  <!-- Generated from `input/images-source/cms-workflow.plantuml` -->
  {% include cms-workflow.svg %}
</figure>
<br clear="all">

1. A system creates a **CommunicationRequest** with the message content (direct or template-based), recipient contact details, and medium (SMS or email).
2. The messaging service processes the request, resolves any template placeholders, and sends the message.
3. A **Communication** resource is created to record the outcome, linked to the CommunicationRequest via `basedOn`.
4. Delivery status updates are reflected in the Communication's `status` and `statusReason` fields.
