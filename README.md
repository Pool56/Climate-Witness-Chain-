# GrinditeGrandite
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
Climate change is amplifying risks across infrastructure, agriculture, and communities. Engineers and policymakers require data-driven tools to measure system resilience, model correlations of disasters, and automatically trigger actions when risk thresholds are exceeded. 
Current workflows rely on  infrastructure design and moderate  statistical analysis, but these tools are often siloed and not linked to rule-based automation.

The MeTTa programming language offers a novel way to unify heterogeneous data  from AutoCAD dimensions, Excel datasets and environmental hazard records  into logical, mathematical and semantic models that can power smart contracts and adaptive climate responses.

### The issue we are hoping to solve
Assessment of dimensions (AutoCAD)

Problem: Engineers often manually calculate flow rates, pipe volumes, and plant capacities from drawings, which is slow and error-prone.

MeTTa Solution: A programmatic way to take AutoCAD parameters (length, diameter, velocity) and automatically compute water flow, greenhouse insulation, and plant capacity for climate-resilient infrastructure.

Mapping correlations of disasters

Problem: Climate events (floods, droughts, earthquakes) are logged separately, without a unified system for identifying patterns and community risk.

MeTTa solution: Assigns unique identifiers to each region and event, computes risk indices, and reveals disaster correlations to guide interventions (e.g., flood-prone regions get reinforced irrigation networks).

Triggering Smart Contracts (Excel + MeTTa)

Problem: Statistical thresholds from Excel (e.g., rainfall deviations > 2σ from mean) are not directly tied to financial or insurance responses.

MeTTa Solution: Embeds these metrics into if-then rules, enabling automatic triggering of insurance payouts, disaster relief funds, or supply-chain adjustments via blockchain smart contracts.

### How our technology solution can help

The solution could help by gathering real time data so as to aid reseachers such as; doctors and pharmacists to make appropriate decisions with regard to designing medical products, accurately analysing weather patterns, creation of code that relates to medical prescription and providing explanation to code.

### Our idea
The idea is creation of an Intelligent  assistant that is able to answer queries with regard to health sciences and climatic patterns.
The future prospects are to have the application placed on hospitals for monitoring status of patients with respiratory conditions.
Test the application performance on pharmaceutical firms so that they could assess the performance of the medications while taking into account environmental factors.
Lastly, the application could be integrated to other softwares that climate scientists have  such as water engineers with regard to prediction of water shortage.

## Technology implementation

Step 1: AutoCAD integration

Export design attributes especially for farmers who are the most impacted by climatic disasters. The aspects being examined include pipe diameters, greenhouse cover thickness, plant footprint into structured data.

MeTTa computes real-time engineering metrics (flow rate, material insulation, plant capacity).

Step 2: Excel integration

Climate and economic datasets stored in Excel sheets (rainfall, yield, disaster costs).

MeTTa queries Excel data for statistical analysis (mean rainfall, variance in crop yield).

Step 3: Disaster correlation engine

Disaster events (flood, drought, earthquake) are logged with region, date, severity.

MeTTa calculates risk indices per region and generates community IDs.

Step 4: Smart contract triggers

When thresholds are breached such as  MeTTa outputs conditions to a blockchain system.

Smart contracts auto-execute this includes release of microinsurance payouts, allocation of emergency water supply, or subsidy distribution

## Judging criteria 
Relevance of MeTTa<img width="861" height="193" alt="image" src="https://github.com/user-attachments/assets/5f896b19-86e3-4d74-b8c3-3705725ad447" />



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
In the Github section links for the python code of the use of watsonx.ai has been placed.
In the docs section powerpoint of the presentation used in the video has been placed.
An excel sheets highlighting contents of the Environmental Intelligence Suite has also been placed.


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
   
2.  The generator (Watsonx through LangChain).
   
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


