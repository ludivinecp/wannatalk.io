namespace :dev_data do
	desc "Fill database with sample data"
	task create: :environment do

		Rake::Task['db:reset'].invoke

		Conference.save_conference_from_api


	# CONFERENCE FROM API
		Conference.all.map do |conference|

	# PARTICIPANT # CONFERENCE_PARTICIPANT
			(0..5).each do |i|
				participant = conference.participants.create!(name: Faker::Name.name, email: Faker::Internet.email, password: Faker::Internet.password(8))

	# SUBJECT
				subject = participant.subjects.create!(title: Faker::Name.title, description: Faker::Lorem.paragraph, questioner_id: participant.id, conference_id: conference.id )

	# SUBJECT_PARTICIPANT
				subject_participant = SubjectParticipant.create!(interested_id: participant.id, subject_id: subject.id )
			end
		end
		puts "===> DB completed !"
	end
end
