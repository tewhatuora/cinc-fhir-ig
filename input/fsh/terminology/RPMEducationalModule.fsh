ValueSet: RPMEducationModuleVS
Id: rpm-education-module-vs
Title: "Education Module ValueSet"
Description: "Codes representing available education modules."
* ^url = "http://example.org/fhir/ValueSet/education-module-vs"
* ^status = #draft
* include codes from system RPMEducationModuleCS



CodeSystem: RPMEducationModuleCS
Id: rpm-education-module-cs
Title: "Education Module CodeSystem"
Description: "CodeSystem for education modules."
* ^url = "http://example.org/fhir/CodeSystem/rpm-education-module-cs"
* ^status = #active
* ^content = #complete

* #cardiac-rehab-syllabus "Cardiac Rehab Syllabus"
  * #your-heart-group "Your Heart Group"
    * #your-heart-module "COVID-19 Vaccination Side Effects"
    * #things-go-wrong-module "Post-Vaccine Care Guidelines"
    * #faq-module "Frequently Asked Questions"
    * #angina-action-plan-module "Angina Action Plan"
    * #discharge-module "Discharge Instructions"
  * #medications-and-treatments-group "Medications and Treatments Group"
    * #understanding-medication-module "Understanding Medication"
    * #managing-medication-module "Managing Medication"
    * #treatments-module "Treatments Overview"
  * #lifestyle-changes-group "Lifestyle Changes Group"
    * #lifestyle-changes-module "Lifestyle Changes"
    * #healthy-eating-module "Healthy Eating"
    * #healthy-eating-faq-module "Healthy Eating FAQ"
    * #initial-exercise-recovery-module "Initial Exercise & Recovery"
    * #long-term-activity-module "Long-Term Activity"
    * #exercise-faq-module "Exercise FAQ"
    * #quitting-smoking-module "Quitting Smoking"
    * #quitting-smoking-faq-module "Quitting Smoking FAQ"
  * #stress-anxiety-depression-group "Stress, Anxiety & Depression Group"
    * #mental-health-matters-module "Mental Health Matters"
    * #mental-health-recovery-module "Mental Health Recovery"
    * #mental-health-consideration-module "Mental Health Considerations"
  * #external-resources-group "External Resources Group"
    * #support-resources-module "Support Resources"
    * #healthy-eating-resources-module "Healthy Eating Resources"
    * #mental-health-resources-module "Mental Health Resources"
    * #exercise-resources-module "Exercise Resources"
    * #medication-resources-module "Medication Resources"
    * #cultural-resources-module "Cultural Resources"
    * #financial-resources-module "Financial Resources"
    * #habit-resources-module "Habit Resources"
