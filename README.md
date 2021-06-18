# Ronin Oncology FHIR Profile
The Ronin oncology FHIR profile assembles a core set of structured data elements for oncology based on FHIR 4.0.1 and mCODE™ standards.  While mCODE™ is a step towards capturing research-quality data from the treatment of all cancer patients, Ronin's profile modifies/extends mCODE™ to include partner-specific information necessary for Ronin's products.

# FHIR Shorthand (FSH aka fish)
The following references provide information about FHIR Shorthand:
1. [FHIR Profiling: Overview and Information](https://www.youtube.com/watch?v=dku3lqIYEls)
2. [Introduction to FHIR Shorthand](https://www.youtube.com/watch?v=RfmqpUA606U)
3. [Let's Build - Profiling with FHIR Shorthand](https://www.youtube.com/watch?v=7yzLzQjict0)
 
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

# TODO
- [ ] Check fields against inherited MS (must support) constraints and remove redundancies.
- [ ] Add Cardinality where different from standard.
- [ ] Add text descriptions and images to document Implementation Guide (IG).
- [ ] Finish CarePlan resource to model TreatmentPlan.
- [ ] Add Extensions where noted in fsh files.
- [ ] Finish TNM representations in stagings to model after mCODE CancerStaging.
- [ ] Add FSH code for each resource that generate sample resources for testing.
- [ ] Implement github actions to compile profiles and generate Implementation Guide.
- [ ] Implement github actions to deploy new Implementation Guide to hosting platform.
- [ ] Peer review with clinical/product teams to ensure specifications meet Ronin's requirements.
