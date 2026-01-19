# spotify-analysis

This project is set to analyze the effect of a new personalized discovery feature on Free Spotify listeners. The goal is to determine whether or not this new feature has meaningfully improved user value, as well as to identify which user <em>behaviours</em> and <em>segments</em> should be prioritized to maximize our long-term business impact.

To do this, we first need to understand what user value consists of. It is not just conversion from Free to Premium, but also:
<ul>
    <li>How often our users engage</li>
    <li>How long they stay active on our platform</li>
</ul>

The data consists of the following tables:
<ul>
    <li><strong>Users</strong>
        <ul>
            <li>user_id</li>
            <li>signup_date</li>
            <li>acquisition_channel</li>
            <li>country</li>
            <li>device_type</li>
        </ul>
    </li>
    <li><strong>DailyListeningActivity</strong>
        <ul>
            <li>user_id</li>
            <li>date</li>
            <li>sessions</li>
            <li>minutes_listened</li>
            <li>songs_streamed</li>
            <li>playlists_created</li>
        </ul>
    </li>
    <li><strong>Subscriptions</strong>
        <ul>
            <li>user_id</li>
            <li>date</li>
            <li>is_premium</li>
            <li>revenue</li>
        </ul>
    </li>
    <li><strong>FeatureExposure</strong>
        <ul>
            <li>user_id</li>
            <li>exposed</li>
            <li>exposed_date</li>
        </ul>
    </li>
    <li><strong>Churn</strong>
        <ul>
            <li>user_id</li>
            <li>churned_30d</li>
        </ul>
    </li>
</ul>

My analysis will consist of analyzing the data of users not exposed to the new premium feature to establish a baseline. Then, I will compare the treatment and control groups to determine if there is a noticeable difference in user activity.