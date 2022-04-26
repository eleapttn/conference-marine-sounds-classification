FROM ovhcom/ai-training-one-for-all

WORKDIR /workspace
ADD . /workspace

RUN pip install -r requirements.txt

CMD [ "streamlit" , "run" , "/workspace/app.py", "--server.address=0.0.0.0" ]

RUN chown -R 42420:42420 /workspace

ENV HOME=/workspace
