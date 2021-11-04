# PointRecord.new(Order.find(1), User.find(current_user.id), 100).use!
# PointRecord.new(PointCompensation.find(1), User.find(current_user.id), 50).use!
class PointRecord
    # このクラスにあるメソッドを使用する時は、トランザクションの処理で囲って下さい
    def initialize(klass, donate, amount)
      @klass = klass
      @donate = donate
      @amount = amount
    end
  
    # Pointを使用した処理
    def use!
      point_history = @klass.create_point_history!(donate_id: @donate.id, amount: - @amount)
      temp_amount = @amount
      DonatePoint.valid_points(@donate.id).each do | donate_point |
        if donate_point.amount >= temp_amount
            donate_point.amount = donate_point.amount - temp_amount
            PointBreakdown.create!(donate_point_id: donate_point.id,
                                point_history_id: point_history.id,
                                amount: - temp_amount)
            donate_point.save!
            break
        else
          temp_amount -= donate_point.amount
          PointBreakdown.create!(donate_point_id: donate_point.id,
                                 point_history_id: point_history.id,
                                 amount: - donate_point.amount)
                                 donate_point.amount = 0
                                 donate_point.save!
        end
      end
    end

    # Pointを獲得した処理
    def reward!
      point_history = @klass.create_point_history!(donate_id: @donate.id, amount: @amount)
      donate_point = DonatePoint.create!(donate_id: @donate.id, amount: @amount)
      PointBreakdown.create!(donate_point_id: donate_point.id,
                             point_history_id: point_history.id,
                             amount: @amount)
    end
end