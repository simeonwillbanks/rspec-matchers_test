require "spec_helper"

RSpec::Matchers.define :be_blue do
  match do |string|
    string == "blue"
  end

  failure_message_method = if defined?(failure_message)
                             :failure_message
                           else
                             :failure_message_for_should
                           end

  send(failure_message_method) do |string|
    "'#{string}' is not blue"
  end

  failure_message_when_negated_method = if defined?(failure_message_when_negated)
                                          :failure_message_when_negated
                                        else
                                          :failure_message_for_should_not
                                        end

  send(failure_message_when_negated_method) do |string|
    "'#{string}' is blue"
  end
end

describe Rspec::MatchersTest do
  it { described_class.purple.should be_blue }
  it { described_class.blue.should_not be_blue }
end
