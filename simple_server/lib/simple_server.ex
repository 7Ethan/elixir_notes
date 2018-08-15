defmodule SimpleServer do
  @moduledoc """
  Documentation for SimpleServer.
  """
    import Plug.Conn

    def init(options) do
      options
    end

    def call(conn,_opts) do
      conn
      |> IO.inspect()
      |> put_resp_content_type("text/plain")
      |> send_resp(200,"Hello world")
    end

    def connect do
      {:ok,_} = Plug.Adapters.Cowboy.http SimpleServer,[]
    end
end

# $ iex -S mix
# $ SimpleServer.connect

# %Plug.Conn{
#   adapter: {Plug.Adapters.Cowboy.Conn, :...},
#   assigns: %{},
#   before_send: [],
#   body_params: %Plug.Conn.Unfetched{aspect: :body_params},
#   cookies: %Plug.Conn.Unfetched{aspect: :cookies},
#   halted: false,
#   host: "localhost",
#   method: "GET",
#   owner: #PID<0.305.0>,
#   params: %Plug.Conn.Unfetched{aspect: :params},
#   path_info: [],
#   path_params: %{},
#   peer: {{127, 0, 0, 1}, 46440},
#   port: 4000,
#   private: %{},
#   query_params: %Plug.Conn.Unfetched{aspect: :query_params},
#   query_string: "",
#   remote_ip: {127, 0, 0, 1},
#   req_cookies: %Plug.Conn.Unfetched{aspect: :cookies},
#   req_headers: [
#     {"host", "localhost:4000"},
#     {"connection", "keep-alive"},
#     {"cache-control", "max-age=0"},
#     {"upgrade-insecure-requests", "1"},
#     {"user-agent",
#      "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36"},
#     {"accept",
#      "text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8"},
#     {"accept-encoding", "gzip, deflate, br"},
#     {"accept-language", "en-US,en;q=0.9,zh-CN;q=0.8,zh;q=0.7,ca;q=0.6"}
#   ],
#   request_path: "/",
#   resp_body: nil,
#   resp_cookies: %{},
#   resp_headers: [{"cache-control", "max-age=0, private, must-revalidate"}],
#   scheme: :http,
#   script_name: [],
#   secret_key_base: nil,
#   state: :unset,
#   status: nil
# }
# %Plug.Conn{
#   adapter: {Plug.Adapters.Cowboy.Conn, :...},
#   assigns: %{},
#   before_send: [],
#   body_params: %Plug.Conn.Unfetched{aspect: :body_params},
#   cookies: %Plug.Conn.Unfetched{aspect: :cookies},
#   halted: false,
#   host: "localhost",
#   method: "GET",
#   owner: #PID<0.305.0>,
#   params: %Plug.Conn.Unfetched{aspect: :params},
#   path_info: ["favicon.ico"],
#   path_params: %{},
#   peer: {{127, 0, 0, 1}, 46440},
#   port: 4000,
#   private: %{},
#   query_params: %Plug.Conn.Unfetched{aspect: :query_params},
#   query_string: "",
#   remote_ip: {127, 0, 0, 1},
#   req_cookies: %Plug.Conn.Unfetched{aspect: :cookies},
#   req_headers: [
#     {"host", "localhost:4000"},
#     {"connection", "keep-alive"},
#     {"pragma", "no-cache"},
#     {"cache-control", "no-cache"},
#     {"user-agent",
#      "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36"},
#     {"accept", "image/webp,image/apng,image/*,*/*;q=0.8"},
#     {"referer", "http://localhost:4000/"},
#     {"accept-encoding", "gzip, deflate, br"},
#     {"accept-language", "en-US,en;q=0.9,zh-CN;q=0.8,zh;q=0.7,ca;q=0.6"}
#   ],
#   request_path: "/favicon.ico",
#   resp_body: nil,
#   resp_cookies: %{},
#   resp_headers: [{"cache-control", "max-age=0, private, must-revalidate"}],
#   scheme: :http,
#   script_name: [],
#   secret_key_base: nil,
#   state: :unset,
#   status: nil
# }
