#!/usr/bin/ruby
require 'xmpp4r'

module Jab
  include Jabber
  
  def self.jab(opts)
    if [:from, :password, :to, :text].any?{|x| !opts.include? x }
      raise ArgumentError, "you must specify :from, :to, :text"
    end
    
    Client.new(JID.new("#{opts[:from]}/Home")).instance_eval do
      connect 'talk.google.com'
      auth    opts[:password] 
      send    Message.new(opts[:to], opts[:text]).tap{|m| m.type = :chat }
      close 
    end
  end
  
  def jab(opts)
    Jab.jab(opts)
  end
end
