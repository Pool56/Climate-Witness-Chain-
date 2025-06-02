_New to Git and GitHub? This free online course will get you up to speed quickly: [Getting Started with Git and GitHub](https://www.coursera.org/learn/getting-started-with-git-and-github)_.

# Contents

- [Project summary](#project-summary)
  - [The issue we are hoping to solve](#the-issue-we-are-hoping-to-solve)
  - [How our technology solution can help](#how-our-technology-solution-can-help)
  - [Our idea](#our-idea)
- [Technology implementation](#technology-implementation)
- [Judging criteria](#https://compete.05hackathon.watsonx-challenge.ibm.com/competitions/may25#judging )
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

## Technology implementation

## Judging criteria
Feasibility:
The solution is highly feasible given the maturity of the technologies used such as; Watsonx.ai, Elasticsearch, LangChain and  IBM Environmental Intelligence Suite. Each component is production-ready, well-documented, and widely supported.

Thought-out and planned:
The project is clearly modularized into data ingestion (via IBM EIS APIs), embedding and indexing, and a RAG pipeline that integrates Elasticsearch and Watsonx.ai. The modular design ensures that each component can be developed, tested, and improved independently, making it robust and easy to extend.

Proof-of-concept:
The proof-of-concept includes:
Real IBM EIS data ingestion and storage.
Embedding of documents using SentenceTransformers.
Elasticsearch index creation and kNN search.
A LangChain-based RAG pipeline integrating Watsonx.ai for answer generation.
A Jupyter Notebook for interactive exploration.

Application of IBM technology:
IBM Watsonx.ai is the foundation for generative AI, providing large language model capabilities. IBM EIS supplies authoritative climate data to ground the answers in factual insights. The IBM Cloud environment and Elasticsearch integrations are clearly defined, showing practical use of IBM’s ecosystem.


Creativity and innovation
Unique and original approach:
The project combines IBM’s EIS climate event data with Watsonx.ai to produce an innovative climate disaster Q&A tool that answers context-specific questions such as  flood risks using real, time-sensitive data.

Differentiation in the market:
Unlike standard generative AI chatbots, which is prone to  risk hallucinations, this solution uses a Retrieval-Augmented Generation (RAG) design that grounds answers in real-world climate data. This enhances trust, relevance, and reliability—key differentiators in the market.

Novelty:

Integration of IBM’s latest Foundation Models with LangChain’s RAG pipeline.
ESG-focused design tailored to vulnerable communities and decision-makers.
Embedding-driven semantic search using Elasticsearch—allowing precise, context-aware retrieval.

Design and usability
Design:
The project is structured in clear, modular scripts and a user-friendly Jupyter Notebook, enabling quick adaptation by data scientists, climate analysts and policy teams.

User experience:
Users simply enter a question; the system handles retrieval, embedding, and answer generation seamlessly. Outputs are displayed in a readable format, ready for direct use in decision-making.

Ease of use:
Installation is straightforward through requirements.txt and .env, and all credentials are handled securely. Users can interact with the system via notebook, CLI or integrate it into an existing chatbot or dashboard with minimal effort.

Real-world adoption:
Because it uses standard components such as Python, Elasticsearch, IBM APIs and common open-source frameworks SentenceTransformers, LangChain, it’s easy to integrate into real-world workflows.


Effectiveness and Efficiency
Relevance:
Addresses a high-priority issue: helping communities and policymakers quickly understand and respond to climate disasters (floods, heavy rain, earthquakes).

Goal Achievement:
Effectively retrieves relevant climate event data, combines it with generative AI, and provides context-rich, actionable answers tailored to user queries.

Measurable Impact:
By empowering faster, fact-based decisions, the solution helps reduce disaster response time and enhances community resilience—both measurable through metrics like response times, risk assessments, and policy outcomes.

Scalability:
The design supports scaling:
More event types such as  droughts and  wildfires can be added easily.
The solution can serve multiple regions or integrate with national disaster management systems.
Additional languages or local dialects can be integrated using Watsonx’s multilingual capabilities.

### IBM watsonx product(s) used


**Featured watsonx products**

- [watsonx.ai](https://www.ibm.com/products/watsonx-ai) - WHERE AND HOW THIS IS USED IN OUR SOLUTION
- After relevant context is retrieved, it is fed into IBM Watsonx.ai, a powerful generative AI model. Watsonx.ai synthesizes the retrieved context with the user’s question to produce a natural language answer. This helps disaster response teams:
 Get actionable insights tailored to their question.
 Understand complex climate impacts without requiring data analysis skills.
 Make fast, data-driven decisions during a crisis.
- [Environmental Intelligence Suite](https://https://www.ibm.com/products/environmental-intelligence) - WHERE AND HOW THIS IS USED IN OUR SOLUTION
- IBM’s Environmental Intelligence Suite (EIS) offers high-quality, up-to-date climate data on event types such as heavy rains, floods, earthquakes, and droughts. This solution uses the EIS API to fetch event descriptions, locations, severity levels, and timestamps. This rich dataset provides the factual backbone for accurate decision-making, helping teams:
  Identify high-risk areas and affected populations.
  Monitor event severity and predict escalation.
 Coordinate targeted interventions and resource allocation.




### Other IBM technology used


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


