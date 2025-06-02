_New to Git and GitHub? This free online course will get you up to speed quickly: [Getting Started with Git and GitHub](https://www.coursera.org/learn/getting-started-with-git-and-github)_.

# Contents

- [Project summary](#project-summary)
  - [The issue we are hoping to solve](#the-issue-we-are-hoping-to-solve)
  - [How our technology solution can help](#how-our-technology-solution-can-help)
  - [Our idea](#our-idea)
- [Technology implementation](#technology-implementation)
- [Judging criteria](#judging-criteria)
  - [IBM watsonx product(s) used](#ibm-ai-services-used)
  - [Other IBM technology used](#other-ibm-technology-used)
- [Github repository](#github-repository)
- [How  RAG and watsonx.ai was utilized in this solution](#how-RAG-and-watsonx.ai-was-utilized-in-this-solution)
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

## Judging criteria (https://compete.05hackathon.watsonx-challenge.ibm.com/competitions/may25#judging) 
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



### Other IBM technology used
 -[Environmental Intelligence Suite](https://https://www.ibm.com/products/environmental-intelligence) - WHERE AND HOW THIS IS USED IN OUR SOLUTION
- IBM’s Environmental Intelligence Suite (EIS) offers high-quality, up-to-date climate data on event types such as heavy rains, floods, earthquakes, and droughts. This solution uses the EIS API to fetch event descriptions, locations, severity levels, and timestamps. This rich dataset provides the factual backbone for accurate decision-making, helping teams:
  Identify high-risk areas and affected populations.
  Monitor event severity and predict escalation.
 Coordinate targeted interventions and resource allocation.
- [Jupter notebook] ( https://jupyter.org/)-WHERE AND HOW THIS IS USED IN OUR SOLUTION
- Provides an interactive Jupyter Notebook interface for:
  -Testing the RAG pipeline.
  -Experimenting with different queries.
  -Visualizing answers.
## Github repository
# Create a .env file with:
WATSONX_API_KEY=your_api_key
WATSONX_PROJECT_ID=your_project_id
EIS_API_KEY=your_eis_api_key
ELASTICSEARCH_HOST=your_elasticsearch_host
ELASTICSEARCH_USERNAME=your_elasticsearch_username
ELASTICSEARCH_PASSWORD=your_elasticsearch_password

# Install dependencies:
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt

# Run the notebook:
jupyter notebook notebooks/climate_rag_notebook.ipynb

# License


#  requirements.txt


ibm-watsonx-ai>=1.0.312
elasticsearch
langchain
sentence-transformers
pandas
nltk
wget
evaluate
pydantic==1.10.0

#  scripts/fetch_eis_data.py
import os
import requests
import wget
from dotenv import load_dotenv

load_dotenv()

EIS_API_KEY = os.getenv("EIS_API_KEY")

def fetch_climate_data(event_type="heavy_rain"):
    """
    Fetch climate event data from IBM Environmental Intelligence Suite (EIS)
    and save it locally as JSON.
    """
    url = f"https://api.eis.ibm.com/v1/events?eventType={event_type}"
    headers = {"Authorization": f"Bearer {EIS_API_KEY}"}
    response = requests.get(url, headers=headers)
    if response.status_code == 200:
        output_path = f"data/eis_reports/{event_type}.json"
        with open(output_path, "w") as f:
            f.write(response.text)
        print(f" Data saved to {output_path}")
    else:
        print(f" Failed to fetch EIS data: {response.status_code} - {response.text}")

if __name__ == "__main__":
    fetch_climate_data("heavy_rain")
    fetch_climate_data("earthquake")

#  scripts/create_index_and_embed.py
import os
import json
import pandas as pd
from elasticsearch import Elasticsearch
from elasticsearch.helpers import bulk
from sentence_transformers import SentenceTransformer
from langchain.embeddings import SentenceTransformerEmbeddings
from dotenv import load_dotenv

load_dotenv()

# Load ES credentials
es_host = os.getenv("ELASTICSEARCH_HOST")
es_user = os.getenv("ELASTICSEARCH_USERNAME")
es_password = os.getenv("ELASTICSEARCH_PASSWORD")

es_client = Elasticsearch(
    hosts=[es_host],
    basic_auth=(es_user, es_password)
)

embedding_model = SentenceTransformer("all-MiniLM-L6-v2")

index_name = "climate_knn_index"

def create_index(dims=384):
    """
    Creates an Elasticsearch index for climate data with vector support.
    """
    mapping = {
        "properties": {
            "text": {"type": "text"},
            "embedding": {
                "type": "dense_vector",
                "dims": dims,
                "index": True,
                "similarity": "l2_norm"
            }
        }
    }
    if es_client.indices.exists(index=index_name):
        es_client.indices.delete(index=index_name)
    es_client.indices.create(index=index_name, mappings=mapping)
    print(f" Index '{index_name}' created.")

def index_documents():
    """
    Indexes EIS documents into Elasticsearch with embeddings.
    """
    file_path = "data/eis_reports/heavy_rain.json"
    with open(file_path, "r") as f:
        data = json.load(f)
    documents = data.get("events", [])
    docs = []
    for i, event in enumerate(documents):
        text = event.get("description", "")
        embedding = embedding_model.encode(text).tolist()
        doc = {
            "_id": i,
            "_index": index_name,
            "_source": {
                "text": text,
                "embedding": embedding
            }
        }
        docs.append(doc)
    bulk(es_client, docs)
    es_client.indices.refresh(index=index_name)
    print(f" Indexed {len(docs)} documents into '{index_name}'.")

if __name__ == "__main__":
    create_index()
    index_documents()

# scripts/rag_pipeline.py
import os
from dotenv import load_dotenv
from elasticsearch import Elasticsearch
from langchain.embeddings import SentenceTransformerEmbeddings
from langchain.vectorstores import ElasticVectorSearch
from langchain.chains import RetrievalQA
from langchain.llms import WatsonxAI
from ibm_watsonx_ai import Credentials

load_dotenv()

# Elasticsearch client
es_host = os.getenv("ELASTICSEARCH_HOST")
es_user = os.getenv("ELASTICSEARCH_USERNAME")
es_password = os.getenv("ELASTICSEARCH_PASSWORD")

embedding_fn = SentenceTransformerEmbeddings(model_name="all-MiniLM-L6-v2")
vectorstore = ElasticVectorSearch(
    elasticsearch_url=es_host,
    index_name="climate_knn_index",
    embedding=embedding_fn,
    es_user=es_user,
    es_password=es_password
)

# Watsonx LLM
watsonx_api_key = os.getenv("WATSONX_API_KEY")
watsonx_project_id = os.getenv("WATSONX_PROJECT_ID")
credentials = Credentials(
    url="https://us-south.ml.cloud.ibm.com",
    api_key=watsonx_api_key
)
llm = WatsonxAI(credentials, project_id=watsonx_project_id)

qa_chain = RetrievalQA.from_chain_type(
    llm=llm,
    chain_type="stuff",
    retriever=vectorstore.as_retriever()
)

def answer_question(question_text):
    """
    Answers a climate disaster–related question using the RAG pipeline.
    """
    answer = qa_chain.run(question_text)
    print(f"Question: {question_text}\nAnswer: {answer}\n")
    return answer

if __name__ == "__main__":
    sample_question = "How does heavy rain affect vulnerable communities in Nairobi?"
    answer_question(sample_question)

# notebooks/climate_rag_notebook.ipynb
In Jupyter Notebook;

from scripts.rag_pipeline import answer_question

question = "How does climate change increase the risk of floods in Nairobi?"
answer = answer_question(question)
print(answer)


## Contents of Github
In the Github section links for the notebooks made by use of the watsonx.ai
In the docs section documents such as details of the foundation models of IBM Granite are placed, in an excel document.
Additionally a text file has been placed describing features of IBM granite models from a medical point of view.
An excel sheets highlighting contents of the Environmental Intelligence Suite has also been placed.
There are powerpoint documents from courses in the IBM SkillsBuild whose texts have been rephrased by use of Granite models.
The images section contains solution architectures of our project

## How  RAG and watsonx.ai was utilized in this solution
Retrieval-Augmented Generation (RAG) is a hybrid approach that combines:
 Retrieval of relevant documents from a knowledge base (Elasticsearch)
Generation of answers from a Large Language Model (Watsonx.ai), conditioned on the retrieved context.

In this project:
Retrieval: Elasticsearch with vector embeddings (dense semantic search)
Augmentation: The retrieved documents become the context
Generation: IBM Watsonx Foundation Models (LLM) generate final answers using the question + context.

 Step 1: User question
Example: “How does heavy rain affect vulnerable communities in Nairobi?”
 Step 2: Embedding of the question
LangChain uses SentenceTransformers to embed the question vector.
Step 3: Retrieval from Elasticsearch
Elasticsearch uses kNN search on the index to find top-k relevant climate events.
Step 4: Prompt construction
LangChain concatenates the retrieved chunks into a context window.
Step 5: Generation with Watsonx.ai
LangChain sends the prompt (question + context) to Watsonx.ai.
Watsonx.ai generates a natural language answer.
Step 6: Return the final answer
Answer is displayed in the notebook or printed in the console.



Where is RAG implemented:
Elasticsearch stores the climate event descriptions as text plus dense vector embeddings.
 LangChain’s ElasticVectorSearch connects to Elasticsearch to retrieve top-k similar documents for each user query.
This is the R (retrieval) in RAG.
LangChain uses the question embedding to query Elasticsearch and get context paragraphs.


File: scripts/rag_pipeline.py
from langchain.vectorstores import ElasticVectorSearch
# Configure ElasticVectorSearch with embeddings
vectorstore = ElasticVectorSearch(
    elasticsearch_url=es_host,
    index_name="climate_knn_index",
    embedding=embedding_fn,
    es_user=es_user,
    es_password=es_password
)


# Generating answers with Watsonx

WatsonxAI connects to the IBM watsonx.ai Foundation Model endpoint.
This is the G (generation) in RAG.
It uses the context (retrieved from Elasticsearch) and the user question to generate a final answer.

File: scripts/rag_pipeline.py
from langchain.llms import WatsonxAI
from ibm_watsonx_ai import Credentials

# Watsonx credentials
credentials = Credentials(
    url="https://us-south.ml.cloud.ibm.com",
    api_key=watsonx_api_key
)

# WatsonxAI LangChain wrapper
llm = WatsonxAI(credentials, project_id=watsonx_project_id)


# Summary of combining Retrieval Augmented Generation with Generation of Text
 In this section LangChain’s RetrievalQA chain wraps:
1. The retriever (Elasticsearch through LangChain).
2. The generator (Watsonx through LangChain).
It first retrieves relevant chunks, using Elasticsearch, and then feeds them, along with the question,  to Watsonx.ai for answer generation.

File: scripts/rag_pipeline.py

from langchain.chains import RetrievalQA

# Create the RAG pipeline
qa_chain = RetrievalQA.from_chain_type(
    llm=llm,
    chain_type="stuff",
    retriever=vectorstore.as_retriever()
)




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


