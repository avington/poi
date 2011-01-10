Factory.define :task do |f|
  f.name 'task'
  f.billable true
  f.description 'test'
  f.rate 80.00
end
Factory.define :client do |f|
  f.sequence :email do |e|
    "user#{e}@tekpub.com"
  end
  f.name "rob"
  f.contact "blah blah"
end
Factory.define :project do |f|
  f.name "test"
  f.description "test project"
  f.budget 1000.00
  f.association :client
end

Factory.define :user do |f|
  f.sequence :email do |e|
    "user#{e}@tekpub.com"
  end
  f.password "password"
  f.password_confirmation "password"
end

