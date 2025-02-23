_New to Git and GitHub? This free online course will get you up to speed quickly: [Getting Started with Git and GitHub](https://www.coursera.org/learn/getting-started-with-git-and-github)_.

# Contents

- [Project summary](#project-summary)
  - [The issue we are hoping to solve](#the-issue-we-are-hoping-to-solve)
  - [How our technology solution can help](#how-our-technology-solution-can-help)
  - [Our idea](#our-idea)
- [Technology implementation](#technology-implementation)
  - [IBM watsonx product(s) used](#ibm-ai-services-used)
  - [Other IBM technology used](#other-ibm-technology-used)
- [Additional details](#additional-details)
- [About this template](#about-this-template)
  - [Contributing](#contributing)
  - [Versioning](#versioning)
  - [Authors](#authors)
  - [License](#license)
  - [Acknowledgments](#acknowledgments)


## Project summary
Our project focuses on mitigating effects of climate change by use of IBM technologies such as Watsonx and Cognos analytics. The sectors we are targeting are health and climate while the beneficiaries of our solution are climate scientists, doctors, pharmacists and people with medical conditions such as those who are asthmatic.  The solution first starts with collection of information about IBM granite models, climate data and health details of people. The second step is establishing a relation health and climate by using the structure mode of watsonx.ai. Then the generated text and code by from Watsonx.ai is analysed by Watsonx.governance while using Granite guardian 3.1 8B, the purpose is to determine presence of hallucinations. Afterwards, the generated text is placed into a text file which is then uploaded to the chat mode of watsonx.ai, the text file is used to ground responses. The text file has  medical descriptions illustrating features of Granite models. The purpose is to create an intelligent assistant which provides customised responses based on the profession of a person such as a doctor or a climate scientist.  Additionally, the project involves use of data from IBM's ESG applications such as the Environmental Intelligence Suite so as to enable doctors and pharmacists to make informed decisions about the how their medications would perform in hostile climates such as regions with high temperature. We are creating learning materials in the form of powerpoints for either doctors, pharmacists or climate scientists such as water engineers  who are not conversant to IBM technologies such as Watsonx.ai, Watsonx. Assistant and Watsonx. Orchestate. The information is derived from courses in the IBM SkillsBuild. We are using granite models such as Granite 13 billion  ModelInstruct for summarization and  generation of text for the learning materials.

### The issue we are hoping to solve
The problem  being addressed is people with medical conditions such as asthma are severely impacted by climate change specifically regarding elevated  temperature and high amounts of carbon emission. There are medications which have been designed to treat various conditions however, some medications do not work effectively due to hostile climatic conditions. 
Additionally climate scientists, doctors or even pharmacists may not know how to use IBM  technology so as to assess environmental factors.
### How our technology solution can help

The solution could help by gathering real time data so as to aid reseachers such as; doctors and pharmacists to make appropriate decisions with regard to designing medical products, accurately analysing weather patterns, creation of code that relates to medical prescription and providing explanation to code.

### Our idea
The idea is creation of an Intelligent  assistant that is able to answer queries with regard to health sciences and climatic patterns.
The future prospects are to have the application placed on hospitals for monitoring status of patients with respiratory conditions.
Test the application performance on pharmaceutical firms so that they could assess the performance of the medications while taking into account environmental factors.
Lastly, the application could be integrated to other softwares that climate scientists have  such as water engineers with regard to prediction of water shortage.

### Success criteria

Application of technology
The application utilises various IBM technology such as Watsonx Assistant, Watsonx.ai, Cognos analysis, Watsonx Orchestrate and Watsonx.governance. The application also utilises IBM content from courses in the IBM SkillsBuild.
The models (IBM technologies) are integrated into the solution by determining the relation of climatic factors such as temperature to medical conditions such as asthma.

Business value.
The value is based on reduction of time for  doctors who have a difficulty recommending what prescription to give their patients while taking into account environmental factors.

Originality
The uniqueness is integration of services from Watsonx with IBM's ESG software such as Environmental Intelligence Suite as well as use of  the Cognos analytics
Another creative aspect is designing detailed text files and pdf documents from IBM SkillsBuild which enables users to understand the functionality of IBM software such as Watsonx.ai.



## Technology implementation

### IBM watsonx product(s) used


**Featured watsonx products**

- [watsonx.ai](https://www.ibm.com/products/watsonx-ai) - WHERE AND HOW THIS IS USED IN OUR SOLUTION
- The watsonx.ai (structure mode)  is used for generation of text by use of Granite 3.1-8b-Instruct
- The watsonx.ai (structure mode)  is used to translate technical English terms to French by use of Granite 20B Multilingual Model
- The watsonx.ai (structure mode) is used for generation of code by use  of Granite-20B-code-instruct
- The watsonx.ai (structure mode) is used to explain code by use of Granite-34b-code-instruct  
- The watsonx.ai (structure mode) is used for generation of new text from information obtained from the IBM SkillsBuild, by use of Granite 3.1-2B-instruct
- The watsonx.ai ( chat mode) is used for generation of text by use of granite 3-8-b-instruct
- [watsonx.governance](https://www.ibm.com/products/watsonx-governance) - WHERE AND HOW THIS IS USED IN OUR SOLUTION
- The watsonx.governance was used to detect levels or presence of hallucinations of codes being  created as well as providing solutions,by use of Granite Guardian 3.1 8B


### Other IBM technology used
IBM Environmental Intelligence Suite was used to examine geospatial, weather and climate data which are main factors that water engineers take into account when drilling boreholes. Cognos Analytics was used so as to formulate AI-powered responses and insights from factors that could affect water access such as examining scope emission report from IBM Envizi so as determine possible level of carbon contamination of water.This insights could be used for making data-driven decisions

## Additional-details
## Contents of Github
In the Github section links for the notebooks made by use of the watsonx.ai
In the docs section documents such as details of the foundation models of IBM Granite are placed, in an excel document.
Additionally a text file has been placed describing features of IBM granite models from a medical point of view.
An excel sheets highlighting contents of the Environmental Intelligence Suite has also been placed.
There are powerpoint documents from courses in the IBM SkillsBuild whose texts have been rephrased by use of Granite models.
The images section contains solution architectures of our project





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


