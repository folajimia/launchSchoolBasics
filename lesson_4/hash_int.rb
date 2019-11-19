
#Given this data structure write some code to return an array which contains
#only the hashes where all the integers are even.
arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]
new_arr = []
arr.select do |hashes|
  #puts hashes
  hashes.all do |_, value|
    value.all? do |num|
      num.even?

  end

end

p new_arr



#    #updated_post_title = "Test"+ rand(50).to_s #only useful if able to fetch post title via API
        #    #updated_post = HelpCenterAPI::Post.update(@moderator_api_user , id: @post.id, body: { post_status: toggle })

            define_method post_status.to_s do |post_state|
              updated_post = HelpCenterAPI::Post.update(hc_default_api_client , id: @post.id, body: { post_state: toggle })
        #     #get help centre id
              hc_id = get_help_centers_details('id')
        #     #fetch moderator activity list
              moderator_activity_list = list_moderator_activities_via_graphql(current_account, hc_id)
        #     #check that the answered status is available in the moderator activity list
        #     puts toggle
        #     puts post_status
        #     puts moderation_event
              require 'byebug'
              byebug
              #moderator_activity_list.edges.each do |activity|
        #     #  if activity.node.event.new_pinned == activity.node.event.send(moderation_event)

        #     #    expect((activity.node.event.send(moderation_event) == updated_post.send(post_status))&& (activity.node.content.id == Base64.strict_encode64("Post:#{@post.id}"))).to eq true
        #     #  elsif activity.node.event.new_featured == activity.node.event.send(moderation_event)
        #     #    expect((activity.node.event.send(moderation_event) == updated_post.send(post_status))&& (activity.node.content.id == Base64.strict_encode64("Post:#{@post.id}"))).to eq true
        #     #  end
        #     #end
                expect(moderator_activity_list.edges.any? { |activity| (activity.node.event.send("new_#{method}") == updated_post.send(post_status))&& (activity.node.content.id == Base64.strict_encode64("Post:#{@post.id}"))}).to eq true



              #expect(moderator_activity_list.edges.any? { |activity| (activity.node.event.send(moderation_event) == updated_post.send(post_status))&& (activity.node.content.id == Base64.strict_encode64("Post:#{@post.id}"))}).to eq true
            #expect(moderator_activity_list.edges.any? { |activity| (activity.node.event.new_pinned == updated_post.pinned)&& (activity.node.content.id == Base64.strict_encode64("Post:#{@post.id}"))}).to eq true
            #expect(moderator_activity_list.any? { |activity| activity.node.event.send(moderation_event) }).to be(updated_post.send(post_status))
          end
        end




        #updated_post_title = "Test"+ rand(50).to_s #only useful if able to fetch post title via API
        #KnowledgeBankOverviewPage.open_with_sign_in(current_account.email, current_account.password)
        #HelpCenterSidebar.manage_community_moderators
        #require 'byebug'
        #byebug
        #updated_post = HelpCenterAPI::Post.update(@moderator_api_user , id: @post.id, body: { featured: true })
        #updated_post = HelpCenterAPI::Post.update(hc_default_api_client , id: @post.id, body: { pinned: true })
        #get help centre id
        #hc_id = get_help_centers_details('id')
        #moderator_activity_list = list_moderator_activities_via_graphql(current_account, hc_id)
        #guide_graph = Guide::Test::Client::Graph.new(current_account)

        #moderator_activity_list = guide_graph.moderation_activity.get_latest_activity_by_hc(help_center_id: hc_id, no_of_activities: 3)

        #updated_post = HelpCenterAPI::Post.update(@moderator_api_user , id: @post.id, body: { featured: true })


        #moderator_activity_list = guide_graph.moderation_activity.get_latest_activity_by_hc(help_center_id: "1468962", no_of_activities: 3)


        #expect(moderator_activity_list.edges.any? { |activity| (activity.node.event.new_pinned == updated_post.pinned)&& (activity.node.content.id == Base64.strict_encode64("Post:#{@post.id}"))}).to eq true
        #
        [true, false].each do |toggle|
          updated_post = HelpCenterAPI::Post.update(hc_default_api_client , id: @post.id, body: { pinned: toggle })
            #get help centre id
            hc_id = get_help_centers_details('id')
            #fetch moderator activity list
            moderator_activity_list = list_moderator_activities_via_graphql(current_account, hc_id)
            #check that the answered status is available in the moderator activity list
          puts toggle
          expect(moderator_activity_list.edges.any? { |activity| (activity.node.event.new_pinned == updated_post.pinned)&& (activity.node.content.id == Base64.strict_encode64("Post:#{@post.id}"))}).to eq true

        end


        [true, false].each do |toggle|
                  updated_post = HelpCenterAPI::Post.update(hc_default_api_client , id: @post.id, body: { pinned: toggle })
                  #get help centre id
                  hc_id = get_help_centers_details('id')
                  #fetch moderator activity list
                  moderator_activity_list = list_moderator_activities_via_graphql(current_account, hc_id)
                  #check that the answered status is available in the moderator activity list
                  puts toggle
                  expect(moderator_activity_list.edges.any? { |activity| (activity.node.event.new_pinned == updated_post.pinned)&& (activity.node.content.id == Base64.strict_encode64("Post:#{@post.id}"))}).to eq true

                end
