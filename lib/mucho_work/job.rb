java_import 'com.npadv.MuchoWork.Job'

MuchoWork::Job = Java::ComNpadvMuchoWork::Job

class MuchoWork::Job

  alias :open? :isOpen
  alias :failed? :isFailed
  alias :finished? :isFinished

  alias :max_tries :maxTries
  alias :try_count :tryCount
  alias :created_at :createdAt
  alias :updated_at :updatedAt

  alias :can_retry? :canRetry

  def to_s
    %{#<MuchoWork::Job:#{uuid} type='#{type}' status='#{status}' try_count=#{try_count} max_tries=#{max_tries}>}
  end

end
