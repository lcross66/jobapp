user = User.create(email: 'admin@example.com', password: '12345678')
user.add_role :admin
company_rep = User.create(email: 'company@example.com', password: '12345678')
company_rep.add_role :company_rep

CompanyProfile.create(user_id: company_rep.id, first_name: 'Jane', last_name: 'Smith', company_name: 'Company1', street: '7 Kelly St', suburb: 'Ultimo', postcode: '2007', country: 'Australia', company_type: 'Small business')

student = User.create(email: 'student@exapmple.com', password: '12345678', user_type: 'student')
StudentProfile.create(user_id: student.id, first_name: 'Anne', last_name: 'Jones')

catagory = SkillCatagory.create(name: 'Frontend')
catagory2 = SkillCatagory.create(name: 'Databases')
Skill.create(skill_catagory_id: catagory.id, name: 'HTML/CSS')
Skill.create(skill_catagory_id: catagory.id, name: 'Postgresql')

catagories = ['Backend', 'Developer tools', 'Frameworks']
catagories.each do |catagory|
    SkillCatagory.create(name: catagory)
end
