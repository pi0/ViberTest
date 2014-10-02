.class Lcom/viber/voip/messages/conversation/ui/i;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/conversation/ui/g;

.field private b:[Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;

.field private c:Ljava/text/DateFormat;

.field private d:Ljava/text/DateFormat;

.field private e:Ljava/text/FieldPosition;


# direct methods
.method public constructor <init>(Lcom/viber/voip/messages/conversation/ui/g;Landroid/content/Context;[Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/ui/i;->a:Lcom/viber/voip/messages/conversation/ui/g;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 66
    iput-object p3, p0, Lcom/viber/voip/messages/conversation/ui/i;->b:[Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;

    .line 68
    invoke-static {p2}, Landroid/text/format/DateFormat;->getLongDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/i;->c:Ljava/text/DateFormat;

    .line 69
    invoke-static {p2}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/i;->d:Ljava/text/DateFormat;

    .line 70
    new-instance v0, Ljava/text/FieldPosition;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/text/FieldPosition;-><init>(I)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/i;->e:Ljava/text/FieldPosition;

    .line 71
    return-void
.end method

.method private a(Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    const/16 v5, 0x20

    .line 131
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 132
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/i;->c:Ljava/text/DateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->getDate()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    iget-object v3, p0, Lcom/viber/voip/messages/conversation/ui/i;->e:Ljava/text/FieldPosition;

    invoke-virtual {v1, v2, v0, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 133
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 134
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/i;->d:Ljava/text/DateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->getDate()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    iget-object v3, p0, Lcom/viber/voip/messages/conversation/ui/i;->e:Ljava/text/FieldPosition;

    invoke-virtual {v1, v2, v0, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 135
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/viber/voip/messages/conversation/ui/j;Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const v0, 0x7f090093

    const/4 v3, 0x0

    .line 103
    invoke-virtual {p2}, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->isMissed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    const v1, 0x7f0200db

    .line 105
    const v0, 0x7f090094

    .line 114
    :goto_0
    invoke-static {p2}, Lcom/viber/voip/util/gk;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;)Ljava/lang/String;

    move-result-object v4

    .line 115
    invoke-virtual {p2}, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->isMissed()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->isAnswerredOnAnotherDevice()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    move v2, v3

    .line 117
    :goto_1
    if-eqz v2, :cond_4

    .line 118
    invoke-static {p1}, Lcom/viber/voip/messages/conversation/ui/j;->a(Lcom/viber/voip/messages/conversation/ui/j;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 119
    invoke-static {p1}, Lcom/viber/voip/messages/conversation/ui/j;->a(Lcom/viber/voip/messages/conversation/ui/j;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {p2}, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->getDuration()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/viber/voip/util/ak;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    :goto_2
    invoke-static {p1}, Lcom/viber/voip/messages/conversation/ui/j;->b(Lcom/viber/voip/messages/conversation/ui/j;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    invoke-static {p1}, Lcom/viber/voip/messages/conversation/ui/j;->b(Lcom/viber/voip/messages/conversation/ui/j;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {p1}, Lcom/viber/voip/messages/conversation/ui/j;->b(Lcom/viber/voip/messages/conversation/ui/j;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 126
    invoke-static {p1}, Lcom/viber/voip/messages/conversation/ui/j;->c(Lcom/viber/voip/messages/conversation/ui/j;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 127
    invoke-static {p1}, Lcom/viber/voip/messages/conversation/ui/j;->d(Lcom/viber/voip/messages/conversation/ui/j;)Landroid/widget/TextView;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/viber/voip/messages/conversation/ui/i;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    return-void

    .line 106
    :cond_1
    invoke-virtual {p2}, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->isIncoming()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 107
    const v1, 0x7f0200da

    .line 108
    goto :goto_0

    .line 110
    :cond_2
    const v1, 0x7f0200dc

    .line 111
    goto :goto_0

    .line 115
    :cond_3
    const/4 v2, 0x1

    goto :goto_1

    .line 121
    :cond_4
    invoke-static {p1}, Lcom/viber/voip/messages/conversation/ui/j;->a(Lcom/viber/voip/messages/conversation/ui/j;)Landroid/widget/TextView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method


# virtual methods
.method public a(I)Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/i;->b:[Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/i;->b:[Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;

    array-length v0, v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/conversation/ui/i;->a(I)Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/i;->b:[Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 90
    if-nez p2, :cond_0

    .line 91
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/i;->a:Lcom/viber/voip/messages/conversation/ui/g;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/ui/g;->a(Lcom/viber/voip/messages/conversation/ui/g;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030032

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 92
    new-instance v0, Lcom/viber/voip/messages/conversation/ui/j;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/i;->a:Lcom/viber/voip/messages/conversation/ui/g;

    invoke-direct {v0, v1, p2, v2}, Lcom/viber/voip/messages/conversation/ui/j;-><init>(Lcom/viber/voip/messages/conversation/ui/g;Landroid/view/View;Lcom/viber/voip/messages/conversation/ui/h;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 95
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/conversation/ui/j;

    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/conversation/ui/i;->a(I)Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/messages/conversation/ui/i;->a(Lcom/viber/voip/messages/conversation/ui/j;Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;)V

    .line 96
    return-object p2
.end method
