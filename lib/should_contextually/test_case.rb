module ShouldContextually
  module TestCase
    def should_contextually(&block)
      yield
    end

    def allow_access_to(action, options, &request)
      roles = extract_roles!(options)
      roles.each do |role|
        allow_test = ShouldContextually.allow_access_block
        access_test_for(action, role, request, allow_test)
      end
    end

    def deny_access_to(action, options, &request)
      roles = extract_roles!(options)
      roles.each do |role|
        deny_test = ShouldContextually.deny_test_for(role)
        access_test_for(action, role, request, deny_test)
      end
    end

    private

    def extract_roles!(options)
      Array options[:as]
    end

    def access_test_for(action, role, request, assertions)
      context "accessing :#{action} as #{role}" do
        setup &ShouldContextually.before_all_roles_block if ShouldContextually.before_all_roles_block
        setup &ShouldContextually.role_setup_blocks[role]
        setup &request
        instance_eval &assertions
      end
    end
  end
end

ActionController::TestCase.send(:extend, ShouldContextually::TestCase)