.class public Lcom/viber/voip/messages/ui/popup/a/g;
.super Lcom/viber/voip/messages/ui/popup/a/i;
.source "SourceFile"


# instance fields
.field private a:Lcom/viber/voip/messages/ui/popup/a/h;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/viber/voip/messages/conversation/ai;Lcom/viber/voip/messages/ui/popup/a/h;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/messages/ui/popup/a/i;-><init>(Landroid/app/Activity;Lcom/viber/voip/messages/conversation/ai;)V

    .line 23
    iput-object p3, p0, Lcom/viber/voip/messages/ui/popup/a/g;->a:Lcom/viber/voip/messages/ui/popup/a/h;

    .line 24
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/popup/a/g;->b()Z

    .line 25
    return-void
.end method


# virtual methods
.method public a(ILcom/viber/voip/messages/conversation/an;)Ljava/lang/String;
    .locals 6
    .parameter
    .parameter

    .prologue
    const v5, 0x7f0c052c

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 49
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/popup/a/g;->f()Lcom/viber/voip/messages/conversation/ai;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 50
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/a/g;->a:Lcom/viber/voip/messages/ui/popup/a/h;

    invoke-virtual {p2}, Lcom/viber/voip/messages/conversation/an;->j()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/messages/ui/popup/a/h;->a(J)Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    move-result-object v0

    .line 52
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->isConversationGroup()Z

    move-result v1

    if-nez v1, :cond_1

    .line 53
    :cond_0
    const-string/jumbo v0, ""

    .line 63
    :goto_0
    return-object v0

    .line 55
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getGroupName()Ljava/lang/String;

    move-result-object v0

    .line 56
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 57
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/popup/a/g;->g()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/popup/a/g;->g()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c04a3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 55
    :cond_2
    const-string/jumbo v0, ""

    goto :goto_1

    .line 59
    :cond_3
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/popup/a/g;->g()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 63
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/view/View;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x8

    .line 29
    const v0, 0x7f0700ad

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 30
    const v1, 0x7f07024d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 31
    const v2, 0x7f0702ae

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 32
    const v3, 0x7f0702af

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 34
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 35
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 36
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 37
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 43
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/popup/a/g;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/popup/a/g;->e()Ljava/util/Map;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    return-void
.end method
