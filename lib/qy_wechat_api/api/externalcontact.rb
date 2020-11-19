
module QyWechatApi
  module Api
    class Externalcontact < Base

      #获取配置了客户联系功能的成员列表
      def get_follow_user_list
        http_get("get_follow_user_list")
      end

      private
        def base_url
          "/externalcontact"
        end

      end
    end
end
