defmodule FooWeb.PageController do
  use FooWeb, :controller
  require Logger

  def index(conn, _params) do
    render conn, "index.html"
  end

  def exception(conn, _params) do
    Logger.error("Oops")
    reder conn, "exception.html"
  end
end
