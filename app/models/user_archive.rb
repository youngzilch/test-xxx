class UserArchive < ActiveRecord::Base

  def self.archiveUser(usr,times)
    a = UserArchive.new()
    a.usr_id=usr.id
    a.name=usr.name
    a.email=usr.email
    a.state=usr.state
    a.usr_created=usr.created_at
    a.usr_updated=usr.updated_at
    a.archive_time=times
    UserArchive.transaction do
      a.save!
      usr.destroy_with_transactions
    end
    return a
  end



end
