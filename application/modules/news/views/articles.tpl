{foreach from=$articles item=article}
	<article class="main_box">
		<a href="{$url}news/view/{$article.id}" class="main_box_top">{$article.headline}</a>
		<div class="main_box_body">
			{if $article.avatar}
				<div class="avatar">
					<img src="{$article.avatar}" alt="avatar" height="120" width="120">
				</div>
			{/if}

			{$article.content}

			<div class="clear"></div>
		</div>
		<div class="main_box_bottom">

			{if $article.comments != -1}
				<a {$article.link} class="news_comments" {$article.comments_button_id}>
					{lang("comments", "news")} ({$article.comments})
				</a>
			{/if}

			{lang("posted_by", "news")} <b>{$article.author}</b> {lang("on", "news")} <b>{$article.date}</b>

			{if $article.tags}
				{foreach from=$article.tags item=tag}
					<a href="{$url}/news/{$tag.name}">{$tag.name}</a>
				{/foreach}
			{/if}
		</div>

		<div class="comments" {$article.comments_id}></div>
	</article>
{/foreach}
{$pagination}