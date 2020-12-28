defmodule ElixirKafkaStarter.Router do
  use Plug.Router
  use Plug.Debugger
  require Logger

  plug(Plug.Logger, log: :debug)
  plug(:match)

  plug(Plug.Parsers,
    parsers: [:json],
    pass: ["application/json"],
    json_decoder: Jason
  )

  plug(:dispatch)

  get "/health" do
    send_resp(conn, 200, "ok")
  end

  get "/" do
    with :ok <- ElixirKafkaStarter.hello() do
      send_resp(conn, 200, "ok")
    end
  end

  post "/" do
    IO.inspect(conn.body_params)
    send_resp(conn, 200, "ok")
  end

  match _ do
    send_resp(conn, 404, "not found")
  end
end
