FactoryGirl.define do
factory :user do

##GENERAL
# validity of user id and passwords

    factory :valid_user, class: User do

      email "test@test.com"
      password "password"
      password_confirmation "password"
    end

    factory :null_email, class: User do
    email nil
    password "password"
    end



     factory :long_email, class: User do
      email "test@recdocjvrfdsdforvdriofgnfghjfugynujghunvn;sdvxxdfbvftdbftgbfgxcfbbrvdfvdrfv"
      password "password"

       end

    factory :base_password, class: User do
      password "password"
    end

    factory :long_password, class: User do
      password "dflijvdfinvrkeslgdnvkjxbvkutdbvtkjblkvrsndvfkn,bjkfdnbkjsn"
    end

    factory :password_confirmation, class: User do
      password 'trueness'
      password_confirmation 'falseness'
    end

  end
end
