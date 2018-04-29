defmodule EctoDeadlockExampleWeb.PageController do
  use EctoDeadlockExampleWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
