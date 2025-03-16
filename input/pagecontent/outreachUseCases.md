The following examples show the expected interactions of AIR & Whaihua for creating and fulfilling immunisation outreach referrals. 

Key elements that need to be updated / added at each step are shown in the tables describing key steps. 

## 1. Create outreach referral

<figure>
  <!-- Generated from `input/images-source/outreach-create-outreach-referral.plantuml` -->
  {% include outreach-create-outreach-referral.svg %}
</figure>
<br clear="all">

**[01] Create ServiceRequest for outreach**

| Element | Expected update/information |
| ---------- | ----------------------------|
| ServiceRequest.status | create as 'active' code |
| ServiceRequest.intent | create as 'plan' code |
| ServiceRequest.code | use 'Immunization' code'|
| ServiceRequest.subject | set to NHI identifier for patient |
| ServiceRequest.tag | update to AIR/ISM to indicate who edited it last |
| ServiceRequest.source | update to AIR/ISM to indicate who edited it last |

## 2. Accept outreach referral

<figure>
  <!-- Generated from `input/images-source/outreach-accept-outreach-referral.plantuml` -->
  {% include outreach-accept-outreach-referral.svg %}
</figure>
<br clear="all">

**[06] Update ServiceRequest to claim**

| Element | Expected update/information |
| ---------- | ----------------------------|
| ServiceRequest.performer | update performer to Organization/Whaihua (TBC - confirm reference format) |
| ServiceRequest.tag | update to Whaihua to indicate who edited it last |
| ServiceRequest.source | update to Whaihua to indicate who edited it last |

## 3. Create Tasks to track outreach activities

<figure>
  <!-- Generated from `input/images-source/outreach-create-task.plantuml` -->
  {% include outreach-create-task.svg %}
</figure>
<br clear="all">

**[10] Create outreach fulfilment Task**

| Element | Expected update/information |
| ---------- | ----------------------------|
| Task.status | 'accepted' to indicate has agreed to do it but work hasn't started on it |
| Task.basedOn | Reference to the ServiceRequest this Task is related to |
| Task.intent | 'plan' |
| Task.code | The vaccine the outreach task is for (or generic imms outreach code if Task represents multiple) |
| Task.for |  NHI identifier for patient |
| Task.input | reference to ImmunizationRec in AIR |
| Task.tag | update to Whaihua to indicate who edited it last |
| Task.source | update to Whaihua to indicate who edited it last |

**[12] Update Task**

| Element | Expected update/information |
| ---------- | ----------------------------|
| Task.status | 'in-progress' to indicate has agreed to do it but work hasn't started on it |
| Task.tag | update to Whaihua to indicate who edited it last |
| Task.source | update to Whaihua to indicate who edited it last |

## 4. Create and store Communications against ServiceRequests