.class public Lcom/viber/voip/messages/ui/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lcom/viber/voip/messages/ui/bb;

.field private c:Lcom/viber/voip/messages/conversation/a/a/a/k;

.field private d:Z

.field private e:Landroid/net/Uri;

.field private f:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/viber/voip/messages/conversation/ui/ConversationFragment;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/viber/voip/messages/ui/h;->a:Landroid/content/Context;

    .line 67
    new-instance v0, Lcom/viber/voip/messages/ui/bb;

    invoke-direct {v0, p1}, Lcom/viber/voip/messages/ui/bb;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/h;->b:Lcom/viber/voip/messages/ui/bb;

    .line 68
    iput-object p2, p0, Lcom/viber/voip/messages/ui/h;->f:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    .line 69
    return-void
.end method

.method private a(Lcom/viber/voip/messages/conversation/a/a/a;)V
    .locals 5
    .parameter

    .prologue
    .line 495
    if-eqz p1, :cond_1

    .line 496
    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/viber/voip/messages/ui/h;->a:Landroid/content/Context;

    const v3, 0x7f0d0135

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "System info"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "-["

    const-string/jumbo v4, "\n"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "["

    const-string/jumbo v4, "#\n"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ","

    const-string/jumbo v4, "\n"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\n tempFile: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->H()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "null"

    :goto_0
    const-string/jumbo v3, "-["

    const-string/jumbo v4, "\n"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "["

    const-string/jumbo v4, "#\n"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, ","

    const-string/jumbo v4, "\n"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "]"

    const-string/jumbo v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, " "

    const-string/jumbo v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string/jumbo v1, "Close"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 501
    iget-object v0, p0, Lcom/viber/voip/messages/ui/h;->f:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    instance-of v0, v0, Lcom/viber/voip/messages/ui/chathead/a/b;

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/viber/voip/messages/ui/h;->f:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    check-cast v0, Lcom/viber/voip/messages/ui/chathead/a/b;

    .line 503
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 504
    const/16 v3, 0x3eb

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 505
    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/a/b;->h()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 506
    iget v0, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x2

    or-int/2addr v0, v3

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 508
    :cond_0
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 510
    :cond_1
    return-void

    .line 496
    :cond_2
    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->H()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/gj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 351
    if-nez p1, :cond_0

    .line 352
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Parameter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " must be not null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 355
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/view/ContextMenu;Landroid/view/MenuInflater;Landroid/view/View;)Lcom/viber/voip/messages/conversation/a/a/a/k;
    .locals 9
    .parameter
    .parameter
    .parameter
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 86
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/conversation/a/a/a/k;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/h;->c:Lcom/viber/voip/messages/conversation/a/a/a/k;

    .line 87
    iget-object v0, p0, Lcom/viber/voip/messages/ui/h;->c:Lcom/viber/voip/messages/conversation/a/a/a/k;

    if-nez v0, :cond_0

    .line 88
    const/4 v0, 0x0

    .line 270
    :goto_0
    return-object v0

    .line 95
    :cond_0
    const v0, 0x1020021

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 101
    iget-object v0, p0, Lcom/viber/voip/messages/ui/h;->c:Lcom/viber/voip/messages/conversation/a/a/a/k;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/a/a/a/k;->c()Lcom/viber/voip/ui/b/f;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/conversation/a/a/a;

    .line 102
    invoke-interface {v0}, Lcom/viber/voip/messages/conversation/a/a/a;->e()Ljava/lang/String;

    move-result-object v3

    .line 111
    iget-object v1, p0, Lcom/viber/voip/messages/ui/h;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03006f

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 112
    const v1, 0x7f0700ac

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 113
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v2, v4, :cond_2

    .line 114
    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/widget/TextView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 119
    :goto_1
    const v2, 0x7f0700d6

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 121
    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result v4

    const v6, 0x7f0702fb

    if-eq v4, v6, :cond_1

    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result v4

    const v6, 0x7f07031d

    if-eq v4, v6, :cond_1

    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result v4

    const v6, 0x7f0703bc

    if-eq v4, v6, :cond_1

    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result v4

    const v6, 0x7f07030a

    if-ne v4, v6, :cond_9

    .line 123
    :cond_1
    const-string/jumbo v4, "sms"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    const-string/jumbo v3, "text"

    move-object v4, v3

    .line 124
    :goto_2
    const-string/jumbo v3, "text"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 126
    const v3, 0x7f070122

    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 127
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    instance-of v6, v6, Landroid/text/SpannableString;

    if-eqz v6, :cond_3

    invoke-virtual {p3}, Landroid/view/View;->isPressed()Z

    move-result v6

    if-nez v6, :cond_3

    .line 128
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Landroid/text/SpannableString;

    .line 129
    const/4 v6, 0x0

    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v7

    const-class v8, Lcom/viber/voip/ui/style/a;

    invoke-virtual {v3, v6, v7, v8}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/viber/voip/ui/style/a;

    .line 130
    array-length v6, v3

    if-eqz v6, :cond_3

    .line 131
    new-instance v6, Landroid/view/View;

    iget-object v7, p0, Lcom/viber/voip/messages/ui/h;->a:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 132
    const/4 v7, 0x0

    aget-object v7, v3, v7

    invoke-virtual {v7}, Lcom/viber/voip/ui/style/a;->a()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 133
    const/4 v7, 0x0

    aget-object v3, v3, v7

    invoke-virtual {v3}, Lcom/viber/voip/ui/style/a;->a()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v7, "tel:"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 134
    invoke-virtual {p0, p1, p2, v6}, Lcom/viber/voip/messages/ui/h;->b(Landroid/view/ContextMenu;Landroid/view/MenuInflater;Landroid/view/View;)V

    .line 135
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 116
    :cond_2
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setDrawingCacheEnabled(Z)V

    goto/16 :goto_1

    .line 143
    :cond_3
    iget-object v3, p0, Lcom/viber/voip/messages/ui/h;->c:Lcom/viber/voip/messages/conversation/a/a/a/k;

    invoke-virtual {v3}, Lcom/viber/voip/messages/conversation/a/a/a/k;->c()Lcom/viber/voip/ui/b/f;

    move-result-object v3

    check-cast v3, Lcom/viber/voip/messages/conversation/a/a/a;

    invoke-interface {v3}, Lcom/viber/voip/messages/conversation/a/a/a;->y()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v3, p0, Lcom/viber/voip/messages/ui/h;->b:Lcom/viber/voip/messages/ui/bb;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v6

    float-to-int v6, v6

    const/4 v7, 0x1

    invoke-virtual {v3, v1, v6, v7}, Lcom/viber/voip/messages/ui/bb;->a(Landroid/widget/TextView;IZ)V

    .line 167
    :goto_3
    const v1, 0x7f0202fc

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 168
    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->setHeaderView(Landroid/view/View;)Landroid/view/ContextMenu;

    .line 170
    const v1, 0x7f10001b

    invoke-virtual {p2, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 171
    iget-object v1, p0, Lcom/viber/voip/messages/ui/h;->a:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_4

    .line 172
    const v1, 0x7f070488

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 173
    const v1, 0x7f07047a

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 176
    :cond_4
    const v1, 0x7f07048a

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 179
    invoke-interface {v0}, Lcom/viber/voip/messages/conversation/a/a/a;->L()I

    move-result v1

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/viber/voip/messages/ui/h;->d:Z

    if-eqz v1, :cond_5

    .line 180
    const v1, 0x7f070485

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 181
    const v1, 0x7f070488

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 182
    const v1, 0x7f07047a

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 185
    :cond_5
    invoke-interface {v0}, Lcom/viber/voip/messages/conversation/a/a/a;->T()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 186
    const v1, 0x7f070486

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 189
    :cond_6
    invoke-interface {v0}, Lcom/viber/voip/messages/conversation/a/a/a;->H()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    const-string/jumbo v1, "text"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string/jumbo v1, "sticker"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string/jumbo v1, "location"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string/jumbo v1, "animated_message"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 194
    const v1, 0x7f070488

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 197
    invoke-interface {v0}, Lcom/viber/voip/messages/conversation/a/a/a;->x()Z

    move-result v1

    if-nez v1, :cond_7

    .line 198
    const v1, 0x7f070487

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 200
    :cond_7
    const v1, 0x7f07047a

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 201
    const v1, 0x7f070489

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 204
    :cond_8
    const-string/jumbo v1, "formatted_follow"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 205
    const v0, 0x7f070484

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 270
    :cond_9
    :goto_4
    iget-object v0, p0, Lcom/viber/voip/messages/ui/h;->c:Lcom/viber/voip/messages/conversation/a/a/a/k;

    goto/16 :goto_0

    .line 145
    :cond_a
    const-string/jumbo v3, "notif"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 146
    iget-object v3, p0, Lcom/viber/voip/messages/ui/h;->a:Landroid/content/Context;

    const v6, 0x7f0c0423

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 147
    :cond_b
    const-string/jumbo v3, "sound"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 148
    iget-object v3, p0, Lcom/viber/voip/messages/ui/h;->a:Landroid/content/Context;

    const v6, 0x7f0c041f

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 149
    :cond_c
    const-string/jumbo v3, "sticker"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 150
    iget-object v3, p0, Lcom/viber/voip/messages/ui/h;->a:Landroid/content/Context;

    const v6, 0x7f0c0421

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 151
    :cond_d
    const-string/jumbo v3, "location"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 152
    iget-object v3, p0, Lcom/viber/voip/messages/ui/h;->a:Landroid/content/Context;

    const v6, 0x7f0c0420

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 153
    :cond_e
    const-string/jumbo v3, "image"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 154
    iget-object v3, p0, Lcom/viber/voip/messages/ui/h;->a:Landroid/content/Context;

    const v6, 0x7f0c0422

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 155
    :cond_f
    const-string/jumbo v3, "call"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 156
    iget-object v3, p0, Lcom/viber/voip/messages/ui/h;->a:Landroid/content/Context;

    const v6, 0x7f0c0343

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 157
    :cond_10
    const-string/jumbo v3, "video"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 158
    iget-object v3, p0, Lcom/viber/voip/messages/ui/h;->a:Landroid/content/Context;

    const v6, 0x7f0c0424

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 159
    :cond_11
    const-string/jumbo v3, "animated_message"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 160
    iget-object v3, p0, Lcom/viber/voip/messages/ui/h;->a:Landroid/content/Context;

    const v6, 0x7f0c0425

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 161
    :cond_12
    const-string/jumbo v3, "formatted_follow"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 162
    iget-object v3, p0, Lcom/viber/voip/messages/ui/h;->a:Landroid/content/Context;

    const v6, 0x7f0c06ed

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 164
    :cond_13
    const-string/jumbo v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 206
    :cond_14
    const-string/jumbo v1, "image"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 207
    const v0, 0x7f070489

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 208
    const v0, 0x7f070484

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->removeItem(I)V

    goto/16 :goto_4

    .line 209
    :cond_15
    const-string/jumbo v1, "video"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string/jumbo v1, "animated_message"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 210
    :cond_16
    const v0, 0x7f070484

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 211
    const v0, 0x7f07047a

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 212
    const v0, 0x7f070489

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 213
    const v0, 0x7f070485

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 214
    const-string/jumbo v1, "animated_message"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    if-eqz v0, :cond_9

    .line 215
    const v1, 0x7f0c03cc

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 216
    const v0, 0x7f07047a

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 217
    const v0, 0x7f070489

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->removeItem(I)V

    goto/16 :goto_4

    .line 219
    :cond_17
    const-string/jumbo v1, "image"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 220
    const v1, 0x7f070484

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 224
    invoke-interface {v0}, Lcom/viber/voip/messages/conversation/a/a/a;->b()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_9

    .line 225
    const v0, 0x7f070487

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->removeItem(I)V

    goto/16 :goto_4

    .line 227
    :cond_18
    const-string/jumbo v1, "text"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 228
    const v0, 0x7f070485

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 229
    const v0, 0x7f070488

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 230
    const v0, 0x7f07047a

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 231
    const v0, 0x7f070489

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->removeItem(I)V

    goto/16 :goto_4

    .line 232
    :cond_19
    const-string/jumbo v1, "notif"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 233
    const v0, 0x7f070485

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 234
    const v0, 0x7f070488

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 235
    const v0, 0x7f07047a

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 236
    const v0, 0x7f070487

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->removeItem(I)V

    goto/16 :goto_4

    .line 237
    :cond_1a
    const-string/jumbo v1, "location"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 238
    const v0, 0x7f070484

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 239
    const v0, 0x7f070488

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 240
    const v0, 0x7f07047a

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 241
    const v0, 0x7f070489

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->removeItem(I)V

    goto/16 :goto_4

    .line 242
    :cond_1b
    const-string/jumbo v1, "sticker"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 243
    const v1, 0x7f070485

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 244
    const v1, 0x7f070484

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 245
    const v1, 0x7f070488

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 246
    const v1, 0x7f07047a

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 248
    invoke-static {}, Lcom/viber/voip/stickers/r;->a()Lcom/viber/voip/stickers/r;

    move-result-object v1

    invoke-interface {v0}, Lcom/viber/voip/messages/conversation/a/a/a;->P()J

    move-result-wide v2

    long-to-int v0, v2

    invoke-virtual {v1, v0}, Lcom/viber/voip/stickers/r;->l(I)Lcom/viber/voip/stickers/c/a;

    move-result-object v0

    .line 249
    iget-object v1, v0, Lcom/viber/voip/stickers/c/a;->c:Lcom/viber/voip/stickers/c/c;

    sget-object v2, Lcom/viber/voip/stickers/c/c;->c:Lcom/viber/voip/stickers/c/c;

    if-ne v1, v2, :cond_1c

    invoke-virtual {v0}, Lcom/viber/voip/stickers/c/a;->e()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 250
    const v0, 0x7f070487

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->removeItem(I)V

    goto/16 :goto_4

    .line 252
    :cond_1c
    const v0, 0x7f070489

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->removeItem(I)V

    goto/16 :goto_4

    .line 255
    :cond_1d
    const-string/jumbo v0, "call"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 256
    const v0, 0x7f070485

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 257
    const v0, 0x7f070484

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 258
    const v0, 0x7f070488

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 259
    const v0, 0x7f07047a

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 260
    const v0, 0x7f070487

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->removeItem(I)V

    goto/16 :goto_4

    .line 261
    :cond_1e
    const-string/jumbo v0, "sound"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 262
    const v0, 0x7f070485

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 263
    const v0, 0x7f070484

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 264
    const v0, 0x7f070488

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 265
    const v0, 0x7f07047a

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 266
    const v0, 0x7f070487

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 267
    const v0, 0x7f070489

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->removeItem(I)V

    goto/16 :goto_4

    :cond_1f
    move-object v4, v3

    goto/16 :goto_2
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/viber/voip/messages/ui/h;->d:Z

    .line 73
    return-void
.end method

.method public a(Landroid/view/MenuItem;Lcom/viber/voip/messages/conversation/ui/m;)Z
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 359
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 491
    :cond_0
    :goto_0
    :sswitch_0
    const/4 v0, 0x1

    return v0

    .line 361
    :sswitch_1
    iget-object v0, p0, Lcom/viber/voip/messages/ui/h;->c:Lcom/viber/voip/messages/conversation/a/a/a/k;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/viber/voip/messages/ui/h;->c:Lcom/viber/voip/messages/conversation/a/a/a/k;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/a/a/a/k;->c()Lcom/viber/voip/ui/b/f;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/conversation/a/a/a;

    invoke-interface {v0}, Lcom/viber/voip/messages/conversation/a/a/a;->y()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/viber/voip/messages/conversation/ui/m;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 367
    :sswitch_2
    iget-object v0, p0, Lcom/viber/voip/messages/ui/h;->c:Lcom/viber/voip/messages/conversation/a/a/a/k;

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/viber/voip/messages/ui/h;->c:Lcom/viber/voip/messages/conversation/a/a/a/k;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/a/a/a/k;->c()Lcom/viber/voip/ui/b/f;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/conversation/a/a/a;

    invoke-interface {v0}, Lcom/viber/voip/messages/conversation/a/a/a;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/viber/voip/messages/conversation/ui/m;->a(Ljava/util/List;)V

    goto :goto_0

    .line 386
    :sswitch_3
    iget-object v0, p0, Lcom/viber/voip/messages/ui/h;->a:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/viber/voip/messages/ui/h;->c:Lcom/viber/voip/messages/conversation/a/a/a/k;

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/viber/voip/messages/ui/h;->c:Lcom/viber/voip/messages/conversation/a/a/a/k;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/a/a/a/k;->c()Lcom/viber/voip/ui/b/f;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/viber/voip/messages/conversation/a/a/a;

    .line 389
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    invoke-virtual {p2}, Lcom/viber/voip/messages/conversation/ui/m;->f()Lcom/viber/voip/a/m;

    move-result-object v1

    iget-object v1, v1, Lcom/viber/voip/a/m;->c:Lcom/viber/voip/a/ax;

    iget-object v1, v1, Lcom/viber/voip/a/ax;->a:Lcom/viber/voip/a/ao;

    sget-object v2, Lcom/viber/voip/a/aq;->a:Lcom/viber/voip/a/aq;

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/ao;->a(Lcom/viber/voip/a/aq;)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 391
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getFacebookManager()Lcom/viber/voip/messages/extras/fb/s;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/h;->a:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-interface {v6}, Lcom/viber/voip/messages/conversation/a/a/a;->a()J

    move-result-wide v2

    invoke-interface {v6}, Lcom/viber/voip/messages/conversation/a/a/a;->e()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "animated_message"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v6}, Lcom/viber/voip/messages/conversation/a/a/a;->I()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/viber/voip/k/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-interface {v6}, Lcom/viber/voip/messages/conversation/a/a/a;->e()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6}, Lcom/viber/voip/messages/conversation/a/a/a;->H()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/viber/voip/messages/extras/fb/s;->a(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    invoke-interface {v6}, Lcom/viber/voip/messages/conversation/a/a/a;->E()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 404
    :sswitch_4
    iget-object v0, p0, Lcom/viber/voip/messages/ui/h;->a:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/viber/voip/messages/ui/h;->c:Lcom/viber/voip/messages/conversation/a/a/a/k;

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/viber/voip/messages/ui/h;->c:Lcom/viber/voip/messages/conversation/a/a/a/k;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/a/a/a/k;->c()Lcom/viber/voip/ui/b/f;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/viber/voip/messages/conversation/a/a/a;

    .line 407
    iget-object v1, p0, Lcom/viber/voip/messages/ui/h;->a:Landroid/content/Context;

    invoke-interface {v8}, Lcom/viber/voip/messages/conversation/a/a/a;->a()J

    move-result-wide v2

    invoke-interface {v8}, Lcom/viber/voip/messages/conversation/a/a/a;->e()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v8}, Lcom/viber/voip/messages/conversation/a/a/a;->H()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v8}, Lcom/viber/voip/messages/conversation/a/a/a;->p()Z

    move-result v6

    move-object v0, p2

    invoke-virtual/range {v0 .. v7}, Lcom/viber/voip/messages/conversation/ui/m;->a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    invoke-interface {v8}, Lcom/viber/voip/messages/conversation/a/a/a;->e()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "image"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 410
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    invoke-virtual {p2}, Lcom/viber/voip/messages/conversation/ui/m;->f()Lcom/viber/voip/a/m;

    move-result-object v1

    iget-object v1, v1, Lcom/viber/voip/a/m;->c:Lcom/viber/voip/a/ax;

    iget-object v1, v1, Lcom/viber/voip/a/ax;->a:Lcom/viber/voip/a/ao;

    sget-object v2, Lcom/viber/voip/a/aq;->b:Lcom/viber/voip/a/aq;

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/ao;->a(Lcom/viber/voip/a/aq;)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 412
    :cond_2
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getTwitterManager()Lcom/viber/voip/messages/extras/twitter/l;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/h;->a:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-interface {v8}, Lcom/viber/voip/messages/conversation/a/a/a;->a()J

    move-result-wide v2

    invoke-interface {v8}, Lcom/viber/voip/messages/conversation/a/a/a;->e()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v8}, Lcom/viber/voip/messages/conversation/a/a/a;->H()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v8}, Lcom/viber/voip/messages/conversation/a/a/a;->E()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/viber/voip/messages/extras/twitter/l;->a(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/messages/extras/twitter/z;)V

    goto/16 :goto_0

    .line 420
    :sswitch_5
    iget-object v0, p0, Lcom/viber/voip/messages/ui/h;->c:Lcom/viber/voip/messages/conversation/a/a/a/k;

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/viber/voip/messages/ui/h;->c:Lcom/viber/voip/messages/conversation/a/a/a/k;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/a/a/a/k;->c()Lcom/viber/voip/ui/b/f;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/conversation/a/a/a;

    .line 424
    const-string/jumbo v1, "text"

    invoke-interface {v0}, Lcom/viber/voip/messages/conversation/a/a/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 425
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v1

    sget-object v2, Lcom/viber/voip/a/a;->p:Lcom/viber/voip/a/y;

    sget-object v3, Lcom/viber/voip/a/z;->a:Lcom/viber/voip/a/z;

    invoke-virtual {v2, v3}, Lcom/viber/voip/a/y;->a(Lcom/viber/voip/a/z;)Lcom/viber/voip/a/x;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 438
    :cond_3
    :goto_2
    invoke-virtual {p2, v0}, Lcom/viber/voip/messages/conversation/ui/m;->b(Lcom/viber/voip/messages/conversation/a/a/a;)V

    goto/16 :goto_0

    .line 426
    :cond_4
    const-string/jumbo v1, "image"

    invoke-interface {v0}, Lcom/viber/voip/messages/conversation/a/a/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 427
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v1

    sget-object v2, Lcom/viber/voip/a/a;->p:Lcom/viber/voip/a/y;

    sget-object v3, Lcom/viber/voip/a/z;->b:Lcom/viber/voip/a/z;

    invoke-virtual {v2, v3}, Lcom/viber/voip/a/y;->a(Lcom/viber/voip/a/z;)Lcom/viber/voip/a/x;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    goto :goto_2

    .line 428
    :cond_5
    const-string/jumbo v1, "video"

    invoke-interface {v0}, Lcom/viber/voip/messages/conversation/a/a/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 429
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v1

    sget-object v2, Lcom/viber/voip/a/a;->p:Lcom/viber/voip/a/y;

    sget-object v3, Lcom/viber/voip/a/z;->c:Lcom/viber/voip/a/z;

    invoke-virtual {v2, v3}, Lcom/viber/voip/a/y;->a(Lcom/viber/voip/a/z;)Lcom/viber/voip/a/x;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    goto :goto_2

    .line 430
    :cond_6
    const-string/jumbo v1, "sticker"

    invoke-interface {v0}, Lcom/viber/voip/messages/conversation/a/a/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 431
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v1

    sget-object v2, Lcom/viber/voip/a/a;->p:Lcom/viber/voip/a/y;

    sget-object v3, Lcom/viber/voip/a/z;->d:Lcom/viber/voip/a/z;

    invoke-virtual {v2, v3}, Lcom/viber/voip/a/y;->a(Lcom/viber/voip/a/z;)Lcom/viber/voip/a/x;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    goto :goto_2

    .line 432
    :cond_7
    const-string/jumbo v1, "location"

    invoke-interface {v0}, Lcom/viber/voip/messages/conversation/a/a/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 433
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v1

    sget-object v2, Lcom/viber/voip/a/a;->p:Lcom/viber/voip/a/y;

    sget-object v3, Lcom/viber/voip/a/z;->e:Lcom/viber/voip/a/z;

    invoke-virtual {v2, v3}, Lcom/viber/voip/a/y;->a(Lcom/viber/voip/a/z;)Lcom/viber/voip/a/x;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    goto :goto_2

    .line 434
    :cond_8
    const-string/jumbo v1, "animated_message"

    invoke-interface {v0}, Lcom/viber/voip/messages/conversation/a/a/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 435
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v1

    sget-object v2, Lcom/viber/voip/a/a;->p:Lcom/viber/voip/a/y;

    sget-object v3, Lcom/viber/voip/a/z;->f:Lcom/viber/voip/a/z;

    invoke-virtual {v2, v3}, Lcom/viber/voip/a/y;->a(Lcom/viber/voip/a/z;)Lcom/viber/voip/a/x;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    goto/16 :goto_2

    .line 444
    :sswitch_6
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/h;->c:Lcom/viber/voip/messages/conversation/a/a/a/k;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/a/a/a/k;->c()Lcom/viber/voip/ui/b/f;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/conversation/a/a/a;

    invoke-virtual {p2, v0}, Lcom/viber/voip/messages/conversation/ui/m;->a(Lcom/viber/voip/messages/conversation/a/a/a;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 445
    :catch_0
    move-exception v0

    .line 446
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_0

    .line 450
    :sswitch_7
    iget-object v0, p0, Lcom/viber/voip/messages/ui/h;->c:Lcom/viber/voip/messages/conversation/a/a/a/k;

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/viber/voip/messages/ui/h;->c:Lcom/viber/voip/messages/conversation/a/a/a/k;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/a/a/a/k;->c()Lcom/viber/voip/ui/b/f;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/conversation/a/a/a;

    .line 452
    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/h;->a(Lcom/viber/voip/messages/conversation/a/a/a;)V

    goto/16 :goto_0

    .line 457
    :sswitch_8
    iget-object v0, p0, Lcom/viber/voip/messages/ui/h;->e:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/viber/voip/messages/ui/h;->e:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, v7}, Lcom/viber/voip/messages/conversation/ui/m;->b(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 463
    :sswitch_9
    iget-object v0, p0, Lcom/viber/voip/messages/ui/h;->e:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/viber/voip/messages/ui/h;->e:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/viber/voip/messages/conversation/ui/m;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 469
    :sswitch_a
    iget-object v0, p0, Lcom/viber/voip/messages/ui/h;->e:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/viber/voip/messages/ui/h;->e:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/viber/voip/messages/conversation/ui/m;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 475
    :sswitch_b
    iget-object v0, p0, Lcom/viber/voip/messages/ui/h;->c:Lcom/viber/voip/messages/conversation/a/a/a/k;

    if-eqz v0, :cond_0

    .line 476
    invoke-static {}, Lcom/viber/voip/stickers/r;->a()Lcom/viber/voip/stickers/r;

    move-result-object v1

    iget-object v0, p0, Lcom/viber/voip/messages/ui/h;->c:Lcom/viber/voip/messages/conversation/a/a/a/k;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/a/a/a/k;->c()Lcom/viber/voip/ui/b/f;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/conversation/a/a/a;

    invoke-interface {v0}, Lcom/viber/voip/messages/conversation/a/a/a;->P()J

    move-result-wide v2

    long-to-int v0, v2

    invoke-virtual {v1, v0}, Lcom/viber/voip/stickers/r;->l(I)Lcom/viber/voip/stickers/c/a;

    move-result-object v1

    .line 477
    iget-object v0, p0, Lcom/viber/voip/messages/ui/h;->f:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    instance-of v0, v0, Lcom/viber/voip/messages/ui/chathead/a/b;

    if-eqz v0, :cond_9

    .line 478
    iget-object v0, p0, Lcom/viber/voip/messages/ui/h;->f:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    check-cast v0, Lcom/viber/voip/messages/ui/chathead/a/b;

    iget v1, v1, Lcom/viber/voip/stickers/c/a;->b:I

    invoke-static {v1}, Lcom/viber/voip/stickers/b/h;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/chathead/a/b;->f_(I)V

    goto/16 :goto_0

    .line 480
    :cond_9
    iget v0, v1, Lcom/viber/voip/stickers/c/a;->b:I

    invoke-static {v0}, Lcom/viber/voip/stickers/b/h;->d(I)I

    move-result v0

    invoke-static {v0}, Lcom/viber/voip/market/MarketActivity;->d(I)V

    goto/16 :goto_0

    .line 485
    :sswitch_c
    iget-object v0, p0, Lcom/viber/voip/messages/ui/h;->f:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    check-cast v0, Lcom/viber/voip/messages/ui/chathead/a/b;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/h;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/chathead/a/b;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 359
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f070465 -> :sswitch_0
        0x7f070466 -> :sswitch_0
        0x7f07046f -> :sswitch_8
        0x7f070470 -> :sswitch_9
        0x7f070471 -> :sswitch_a
        0x7f07047a -> :sswitch_4
        0x7f070484 -> :sswitch_1
        0x7f070485 -> :sswitch_6
        0x7f070486 -> :sswitch_2
        0x7f070487 -> :sswitch_5
        0x7f070488 -> :sswitch_3
        0x7f070489 -> :sswitch_b
        0x7f07048a -> :sswitch_7
        0x7f070491 -> :sswitch_c
    .end sparse-switch
.end method

.method public b(Landroid/view/ContextMenu;Landroid/view/MenuInflater;Landroid/view/View;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 276
    const-string/jumbo v0, "buildCustomMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "menu size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/ContextMenu;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const-string/jumbo v0, "menu"

    invoke-direct {p0, p1, v0}, Lcom/viber/voip/messages/ui/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    const-string/jumbo v0, "menuInflater"

    invoke-direct {p0, p2, v0}, Lcom/viber/voip/messages/ui/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 279
    const-string/jumbo v0, "view"

    invoke-direct {p0, p3, v0}, Lcom/viber/voip/messages/ui/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 281
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/h;->e:Landroid/net/Uri;

    .line 282
    iget-object v0, p0, Lcom/viber/voip/messages/ui/h;->e:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 316
    :goto_0
    return-void

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/h;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03006f

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 287
    const v0, 0x7f0700ac

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 288
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_1

    .line 289
    invoke-virtual {v0, v4, v5}, Landroid/widget/TextView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 294
    :goto_1
    iget-object v2, p0, Lcom/viber/voip/messages/ui/h;->e:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 296
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderView(Landroid/view/View;)Landroid/view/ContextMenu;

    .line 299
    const v0, 0x7f100012

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 301
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getContactManager()Lcom/viber/voip/contacts/c/d/b;

    move-result-object v0

    .line 302
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-static {v1, v2, v2}, Lcom/viber/voip/util/hd;->a(Lcom/viber/voip/ViberApplication;Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 303
    new-instance v2, Lcom/viber/voip/messages/ui/i;

    invoke-direct {v2, p0, p1}, Lcom/viber/voip/messages/ui/i;-><init>(Lcom/viber/voip/messages/ui/h;Landroid/view/ContextMenu;)V

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/contacts/c/d/b;->a(Ljava/lang/String;Lcom/viber/voip/contacts/c/d/i;)V

    goto :goto_0

    .line 291
    :cond_1
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setDrawingCacheEnabled(Z)V

    goto :goto_1
.end method

.method public c(Landroid/view/ContextMenu;Landroid/view/MenuInflater;Landroid/view/View;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 323
    const-string/jumbo v0, "buildCustomPasteMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "menu size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/ContextMenu;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const-string/jumbo v0, "menu"

    invoke-direct {p0, p1, v0}, Lcom/viber/voip/messages/ui/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 325
    const-string/jumbo v0, "menuInflater"

    invoke-direct {p0, p2, v0}, Lcom/viber/voip/messages/ui/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 326
    const-string/jumbo v0, "view"

    invoke-direct {p0, p3, v0}, Lcom/viber/voip/messages/ui/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcom/viber/voip/messages/ui/h;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03006f

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 329
    const v0, 0x7f0700d6

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 330
    const v1, 0x7f0202fc

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 331
    const v0, 0x7f0700ac

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 332
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v1, v3, :cond_0

    .line 333
    iget-object v1, p0, Lcom/viber/voip/messages/ui/h;->a:Landroid/content/Context;

    const-string/jumbo v3, "clipboard"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    .line 334
    invoke-virtual {v0, v4, v5}, Landroid/widget/TextView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 335
    invoke-virtual {v1}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v1

    .line 336
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    .line 337
    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/viber/voip/messages/ui/h;->g:Ljava/lang/String;

    .line 343
    :goto_0
    iget-object v1, p0, Lcom/viber/voip/messages/ui/h;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    iget-object v1, p0, Lcom/viber/voip/messages/ui/h;->b:Lcom/viber/voip/messages/ui/bb;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v0, v3, v4}, Lcom/viber/voip/messages/ui/bb;->a(Landroid/widget/TextView;IZ)V

    .line 345
    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderView(Landroid/view/View;)Landroid/view/ContextMenu;

    .line 346
    invoke-interface {p1}, Landroid/view/ContextMenu;->clear()V

    .line 347
    const v0, 0x7f10001f

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 348
    return-void

    .line 339
    :cond_0
    iget-object v1, p0, Lcom/viber/voip/messages/ui/h;->a:Landroid/content/Context;

    const-string/jumbo v3, "clipboard"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/ClipboardManager;

    .line 340
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setDrawingCacheEnabled(Z)V

    .line 341
    invoke-virtual {v1}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/viber/voip/messages/ui/h;->g:Ljava/lang/String;

    goto :goto_0
.end method
