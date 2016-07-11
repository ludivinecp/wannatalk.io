module SubjectsHelper

  def questioner?(subject)
    subject.questioner_id == current_participant.id
  end
end
