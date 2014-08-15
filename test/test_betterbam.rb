#!/usr/bin/env	ruby

require 'helper'

class TestBetterBam < Test::Unit::TestCase

  context "BetterBam" do

    setup do
      bam_path = File.join(File.dirname(__FILE__), 'data', 'mini.sort.bam')
      @bb = BetterBam.new bam_path
    end

    should "read a BAM file" do
      @bb.test
    end

  end
end
