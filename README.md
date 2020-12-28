# ElixirKafkaStarter

Sample dockerized project with Plug, Cowboy, and Kafka_ex.

For docs on how to set up Kafka consumers/producers see https://github.com/kafkaex/kafka_ex

To quickly build and run the server:  
`docker build . -t elixir-kafka-starter && docker run -it -p 8080:8080/tcp elixir-kafka-starter`  

Server will be at `localhost:8080`

Kafka connection on start-up is disabled by default. To start with Kafka connection:  
In `config.exs`, set `brokers` in  to your broker hosts, and
enable default `kafka_ex` worker `disable_default_worker: false`  


If using starter project - don't forget to replace ElixirKafkaStarter with your project name and update
`ENTRYPOINT` in Dockerfile
