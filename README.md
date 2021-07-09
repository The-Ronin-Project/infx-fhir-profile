# Ronin Oncology FHIR Profile
The Ronin oncology FHIR profile assembles a core set of structured data elements for oncology based on FHIR 4.0.1 and mCODE™ standards.  While mCODE™ is a step towards capturing research-quality data from the treatment of all cancer patients, Ronin's profile modifies/extends mCODE™ to include partner-specific information necessary for Ronin's products.

The mapping between MDA Resources and Ronin R4/mCODE is detailed in the [FHIR Resources](https://docs.google.com/spreadsheets/d/1qSqmaAK_GaDUUZACUQ6TI5Q9qvQ2BwvQ_KRjl10OoU0/edit?ts=60be5536#gid=0) sheet.

# FHIR Shorthand (FSH aka fish)
The following references provide information about FHIR Shorthand:
1. [FHIR Shorthand Spec](https://build.fhir.org/ig/HL7/fhir-shorthand/index.html)
2. [FHIR Profiling: Overview and Information](https://www.youtube.com/watch?v=dku3lqIYEls)
3. [Introduction to FHIR Shorthand](https://www.youtube.com/watch?v=RfmqpUA606U)
4. [Let's Build - Profiling with FHIR Shorthand](https://www.youtube.com/watch?v=7yzLzQjict0)

This code is a first step to define the Ronin profile constraints and extensions on FHIR.  The Ronin profiles are generated using the [sushi](https://github.com/FHIR/sushi) compiler as shown in the **Build process** section.

# Build Process
To build the profiles, use the following commands:
```
$ npm install -g fsh-sushi
$ git clone git@github.com:projectronin/dp-ronin-fhir-profile.git
$ cd dp-ronin-fhir-profile
$ ./_updatePublisher.sh
$ sushi .
$ ./_genonce.sh
$ open ./output/index.html
```
All profiles will be in `fsh-generated` directory and implementation guide in `output` directory.

# Example Profile Instances
The diagram below is a bundle image of the generated instances from OncologyExamples.fsh file.
The visualization was done with [Bundle Visualizer](http://clinfhir.com/bundleVisualizer.html) by replacing *ronin* with *xyz* and *MDA* with *abc*

![Ronin Oncology Example](./input/images/RoninOncologyExample.png?raw=true "Ronin Oncology Example")

# TODO
- [X] Check fields against inherited MS (must support) constraints and remove redundancies.
- [ ] Add Cardinality where different from standard.
- [ ] Add text descriptions and images to document Implementation Guide (IG).
- [X] Finish CarePlan resource to model TreatmentPlan.
- [X] Finish DocumentReference
- [X] Add Extensions where noted in fsh files.
- [ ] Finish TNM representations in stagings to model after mCODE CancerStaging.
- [X] Add FSH code for each resource to generate sample JSON for testing.
- [X] Implement github actions to compile profiles and generate Implementation Guide.
- [X] Implement github actions to deploy new Implementation Guide to hosting platform.
- [ ] Peer review with clinical/product teams to ensure specifications meet Ronin's requirements.
- [ ] Consolidate Patient and Provider Appointments FSH structures - no need to differentiate types.
