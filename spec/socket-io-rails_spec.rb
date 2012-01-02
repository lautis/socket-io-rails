# encoding: UTF-8
require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "SocketIO::Rails" do
  it "provides JS" do
    Rails.application.assets["socket.io"].should_not be_nil
  end

  it "provides flash resources" do
    Rails.application.assets["socket.io/WebSocketMain.swf"].should_not be_nil
    Rails.application.assets["socket.io/WebSocketMainInsecure.swf"].should_not be_nil
  end
end
