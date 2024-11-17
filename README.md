_New to Git and GitHub? This free online course will get you up to speed quickly: [Getting Started with Git and GitHub](https://www.coursera.org/learn/getting-started-with-git-and-github)_.

# Contents

- [Project summary](#project-summary)
  - [The issue we are hoping to solve](#the-issue-we-are-hoping-to-solve)
  - [How our technology solution can help](#how-our-technology-solution-can-help)
  - [Our idea](#our-idea)
- [Technology implementation](#technology-implementation)
  - [IBM watsonx product(s) used](#ibm-ai-services-used)
  - [Other IBM technology used](#other-ibm-technology-used)
  - [Solution architecture](#solution-architecture)
- [Presentation materials](#presentation-materials)
  - [Solution demo video](#solution-demo-video)
  - [Project development roadmap](#project-development-roadmap)
- [Additional details](#additional-details)
  - [How to run the project](#how-to-run-the-project)
  - [Live demo](#live-demo)
- [About this template](#about-this-template)
  - [Contributing](#contributing)
  - [Versioning](#versioning)
  - [Authors](#authors)
  - [License](#license)
  - [Acknowledgments](#acknowledgments)


## Project summary
Our project focuses on aiding people who are affected by climate change such as asthmatic people. We are creating learning materials in the form of powerpoints for either doctors, pharmacists or climate scientists who are not conversant to IBM technologies such as Watsonx.ai, Watsonx. Assistant and Watsonx. Orchestate. The information is derived from courses in the IBM SkillsBuild.

### The issue we are hoping to solve
The problem  being addressed is people with medical conditions such as asthma are severely impacted by climate change specifically regarding elevated  temperature and high amounts of carbon emission. Their are medications which have been designed to treat various conditions however, some medications do not work effectively due to hostile climatic conditions. 
Additionally climate scientists, doctors or even pharmasists may not know how to use technology so as to assess environmental factors by use of technology.
### How our technology solution can help

The solution could help by gathering real time data so as to aid reseachers such as; doctors and pharmacists to make appropriate decisions with regard to designing medical products or prescribing them.

### Our idea
The idea is creation of an assistant that is able to answer query with regard to health sciences and climatic patterns.
The future prospects are to have the application placed on hospitals for monitoring status of patients with respiratory conditions.
Test the application performance on pharmaceutical firms so that they could assess the performance of the medications while taking into account environmental factors.
Lastly, the application could be integrated to other softwares that climate scientists have  such as water engineers with regard to prediction of water shortage.

### Success criteria

Application of technology
The application utilises various IBM technology such as Watsonx Assistant, Watsonx.ai, Cognos analysis, Watsonx Orchestrate and Watsonx.governance. The application also utilises IBM content from courses in the IBM SkillsBuild.
The models (IBM technologies) are integrated into the solution by determining the relation of climatic factors such as temperature to medical conditions such as asthma.

Business value.
The value is based on reduction of time for  doctors
who have a difficulty recommending what prescription to give their patients while taking into account environmental factors.

Originality
The uniqueness is integration of services from Watsonx with IBM's ESG software such as Environmental Intelligence Suite as well as use of  the Cognos analytics
Another creative aspect is designing detailed text files and pdf documents from IBM SkillsBuild which enables users to understand the functionality of IBM software such as Watsonx. Assistant.

More detail is available in our [description document](./docs/DESCRIPTION.md).

## Technology implementation

### IBM watsonx product(s) used

_INSTRUCTIONS: Included here is a list of IBM watsonx products. Remove any products you did not use. Leave only those included in your solution code. In your official submission on the Call for Code Global Challenge web site, you are required to provide details on where and how you used each IBM watsonx product so judges can review your implementation. Remove these instructions._

**Featured watsonx products**

- [watsonx.ai](https://www.ibm.com/products/watsonx-ai) - WHERE AND HOW THIS IS USED IN OUR SOLUTION
- The Watsonx.ai was integrated with the Watsonx.Assistant so as to provide answers which are detailed for easier understanding.
- The watsonx.ai was used for generation of new text from information obtained from the IBM SkillsBuild.
- The watsonx.ai was also used in for prediction of weather patterns such as daily precipitation and providing recommendations on what action should be taken. Extreme climatic conditions affect certain people especially those who are asthmatic.

- [watsonx.governance](https://www.ibm.com/products/watsonx-governance) - WHERE AND HOW THIS IS USED IN OUR SOLUTION
- The watsonx.governance was used to detect levels or presence of copyright infringement from the generated content extracted from IBM SkillsBuild as well as information obtained from webinars and the IBM website.

- [watsonx Assistant](https://cloud.ibm.com/catalog/services/watsonx-assistant) - WHERE AND HOW THIS IS USED IN OUR SOLUTION
- Watsonx assistant was integrated with watsonx.ai so as to provide a simple way to perform an integration between a dialog flow and generative AI inferencing services in watsonx.ai.

### Other IBM technology used
IBM Environmental Intelligence Suite was used to examine geospatial, weather and climate data which are main factors that water engineers take into account when drilling boreholes. Cognos Analytics was used so as to formulate AI-powered responses and insights from factors that could affect water access such as examining scope emission report from IBM Envizi so as determine possible level of carbon contamination of water.This insights could be used for making data-driven decisions

### Solution architecture


1. The user navigates to the site and uploads a video file.
2. Watson Speech to Text processes the audio and extracts the text.
3. Watson Translation (optionally) can translate the text to the desired language.
4. The app stores the translated text as a document within Object Storage.

## Presentation materials

_INSTRUCTIONS: The following deliverables should be officially posted to your My Team > Submissions section of the [Call for Code Global Challenge resources site](https://cfc-prod.skillsnetwork.site/), but you can also include them here for completeness. Replace the examples seen here with your own deliverable links._

### Solution demo video
https://youtu.be/3dYIc0G45AQ
https://youtu.be/2W3sXYQsoeg
https://youtu.be/3xDdCV8n8a4
https://youtu.be/TePBeQ-oMoI




## Additional details

_INSTRUCTIONS: The following deliverables are suggested, but **optional**. Additional details like this can help the judges better review your solution. Remove any sections you are not using._

### How to run the project

INSTRUCTIONS: In this section you add the instructions to run your project on your local machine for development and testing purposes. You can also add instructions on how to deploy the project in production.

### Live demo

You can find a running system to test at...
https://dataplatform.cloud.ibm.com/analytics/notebooks/v2/1440e130-3601-4271-88bb-8750995b13a8/view?access_token=199b2cc4131874a8424eaf9e4815372e139e7ab3765d5bc849b862f11a54dba0&context=wx

https://dataplatform.cloud.ibm.com/analytics/notebooks/v2/ade274f2-6129-4bde-b587-621f76afa0ed/view?access_token=fb058ffff3374e5d50eeecdf328f2f48a52009d608057fe6e85e5c8edf8f4c5c&context=wx



---

_INSTRUCTIONS: You can remove the below section from your specific project README._

## About this template

### Contributing

Please read [CONTRIBUTING.md](CONTRIBUTING.md) for details on our code of conduct, and the process for submitting pull requests to us.

### Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/your/project/tags).

### Authors

<a 
</a>

- **John Maina** - _Initial work_ - 

### License

This project is licensed under the Apache 2 License - see the [LICENSE](LICENSE) file for details.

### Acknowledgments

- Based on [Billie Thompson's README template](https://gist.github.com/PurpleBooth/109311bb0361f32d87a2).
