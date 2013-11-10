require "spec_helper"

describe ActiveRecord::Base do
	subject { ActiveRecord::Base }

	describe "Methods" do
		it { should respond_to :has }

		describe "#has" do
			describe "many" do
				let(:association_reflection) { ActiveRecord::Base.has(3, :associations, dependent: :destroy) }
				specify { association_reflection.should be_a ActiveRecord::Reflection::AssociationReflection }
				specify { association_reflection.macro.should eq :has_many }
				specify { association_reflection.name.should eq :associations }
				specify { association_reflection.scope.options[:limit].should eq 3 }
				specify { association_reflection.options[:dependent].should eq :destroy }
			end

			describe "one" do
				let(:association_reflection) { ActiveRecord::Base.has(1, :association, dependent: :destroy) }
				specify { association_reflection.should be_a ActiveRecord::Reflection::AssociationReflection }
				specify { association_reflection.macro.should eq :has_one }
				specify { association_reflection.name.should eq :association }
				specify { association_reflection.options[:dependent].should eq :destroy }
			end
		end
	end
end