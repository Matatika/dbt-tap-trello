with trello_cards as (

     select * from  {{ ref('trello_cards_snapshot') }}

 ),

 final as (

     select
        badges__attachment_by_type__trello__board as badges_attachment_by_type_trello_board
        , badges__attachment_by_type__trello__card as badges_attachment_by_type_trello_card
        , badges__attachments as badges_attachments
        , badges__check_items as badges_check_items
        , badges__check_items_checked as badges_check_items_checked
        , badges__check_items_earliest_due as badges_check_items_earliest_due
        , badges__comments as badges_comments
        , badges__description as badges_description
        , badges__due as badges_due
        , badges__due_complete as badges_due_complete
        , badges__fogbugz as badges_fogbugz
        , badges__location as badges_location
        , badges__start as badges_start
        , badges__subscribed as badges_subscribed
        , badges__viewing_member_voted as badges_viewing_member_voted
        , badges__votes as badges_votes
        , card_role
        , check_item_states
        , closed
        , date_last_activity
        , "desc"
        , due
        , due_complete
        , due_reminder
        , email
        , id as id_card
        , id_attachment_cover
        , id_board
        , id_checklists
        , id_labels
        , id_list
        , id_members
        , id_members_voted
        , id_short
        , is_template
        , labels
        , manual_cover_attachment
        , name
        , pos
        , short_link
        , "start"
        , subscribed
        , url
        , dbt_valid_to
    from trello_cards

)

select * from final
