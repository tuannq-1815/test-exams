module TestHelper
  def select_option_tests
    @tests = Test.all
    @list_tests = {}
    @tests.each do |test|
      @list_tests[test.name.to_s] = test.id
    end
  end
end
