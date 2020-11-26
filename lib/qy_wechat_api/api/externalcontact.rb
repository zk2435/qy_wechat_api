
module QyWechatApi
  module Api
    class Externalcontact < Base

      #获取配置了客户联系功能的成员列表
      def get_follow_user_list
        http_get("get_follow_user_list")
      end

      #获取外部联系人的id
      def list(id)
        http_get("list", {userid: id})
      end

      #获取外部联系人详情
      def get(id)
        http_get("get", {external_userid: id})
      end

      def get_by_user(id)
        http_post("batch/get_by_user",{userid: id})

      end

      private
        def base_url
          "/externalcontact"
        end

      end
    end
end
