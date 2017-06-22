class AuditLogPolicy < ApplicationPolicy
	def index?
		# recafactor
		return true if admin?
	end

	def confirm?
		record.user.id == user.id	|| admin?
	end

		private

			def admin?
				admin_types.include?(user.type)
			end
end