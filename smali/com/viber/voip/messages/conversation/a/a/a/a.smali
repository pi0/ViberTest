.class Lcom/viber/voip/messages/conversation/a/a/a/a;
.super Lcom/viber/voip/ui/b/a;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/viber/voip/ui/b/a",
        "<",
        "Lcom/viber/voip/messages/conversation/a/a/a;",
        "Lcom/viber/voip/messages/conversation/a/a/b/a/b;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Lcom/viber/voip/messages/conversation/a/b/a;

.field private c:Lcom/viber/voip/messages/conversation/a/a/a;

.field private d:Lcom/viber/voip/util/b/w;

.field private e:Lcom/viber/voip/util/b/x;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/viber/voip/messages/conversation/a/b/a;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/viber/voip/ui/b/a;-><init>(Landroid/view/View;)V

    .line 34
    iput-object p2, p0, Lcom/viber/voip/messages/conversation/a/a/a/a;->b:Lcom/viber/voip/messages/conversation/a/b/a;

    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 36
    invoke-static {v0}, Lcom/viber/voip/util/b/w;->a(Landroid/content/Context;)Lcom/viber/voip/util/b/w;

    move-result-object v1

    iput-object v1, p0, Lcom/viber/voip/messages/conversation/a/a/a/a;->d:Lcom/viber/voip/util/b/w;

    .line 37
    invoke-static {v0}, Lcom/viber/voip/util/b/x;->a(Landroid/content/Context;)Lcom/viber/voip/util/b/x;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/a;->e:Lcom/viber/voip/util/b/x;

    .line 39
    const v0, 0x7f07031a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/a;->a:Landroid/widget/ImageView;

    .line 40
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/a;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/messages/conversation/a/a/a;Lcom/viber/voip/messages/conversation/a/a/b/a/b;)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 45
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/a/a/a/a;->c:Lcom/viber/voip/messages/conversation/a/a/a;

    .line 46
    iget-object v3, p0, Lcom/viber/voip/messages/conversation/a/a/a/a;->a:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/a;->c:Lcom/viber/voip/messages/conversation/a/a/a;

    invoke-interface {v0}, Lcom/viber/voip/messages/conversation/a/a/a;->ab()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 48
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/a;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 50
    iget-object v3, p0, Lcom/viber/voip/messages/conversation/a/a/a/a;->c:Lcom/viber/voip/messages/conversation/a/a/a;

    invoke-interface {v3}, Lcom/viber/voip/messages/conversation/a/a/a;->ab()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 51
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/a;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 52
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/a/a/a;->a:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/a;->c:Lcom/viber/voip/messages/conversation/a/a/a;

    invoke-interface {v0}, Lcom/viber/voip/messages/conversation/a/a/a;->ac()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f020310

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 83
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 46
    goto :goto_0

    .line 52
    :cond_1
    const v0, 0x7f02033f

    goto :goto_1

    .line 54
    :cond_2
    iget-object v3, p0, Lcom/viber/voip/messages/conversation/a/a/a/a;->c:Lcom/viber/voip/messages/conversation/a/a/a;

    invoke-interface {v3}, Lcom/viber/voip/messages/conversation/a/a/a;->k()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 57
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 58
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/a/a/a;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/a;->a:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 62
    :cond_3
    iget-object v3, p0, Lcom/viber/voip/messages/conversation/a/a/a/a;->a:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0153

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 63
    iget-object v3, p0, Lcom/viber/voip/messages/conversation/a/a/a/a;->a:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/a;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 66
    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->q()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 67
    invoke-static {}, Lcom/viber/voip/user/UserData;->getImage()Landroid/net/Uri;

    move-result-object v0

    .line 68
    if-eqz v0, :cond_4

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/ViberApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/a/a/a;->d:Lcom/viber/voip/util/b/w;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/a/a/a/a;->a:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/viber/voip/messages/conversation/a/a/a/a;->e:Lcom/viber/voip/util/b/x;

    invoke-virtual {v1, v0, v2, v3}, Lcom/viber/voip/util/b/w;->a(Landroid/net/Uri;Landroid/widget/ImageView;Lcom/viber/voip/util/b/x;)V

    goto :goto_2

    .line 73
    :cond_4
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/a;->a:Landroid/widget/ImageView;

    const v1, 0x7f0202ca

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 76
    :cond_5
    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->aa()J

    move-result-wide v3

    .line 77
    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->ad()J

    move-result-wide v5

    .line 78
    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->S()Z

    move-result v0

    .line 79
    iget-object v7, p0, Lcom/viber/voip/messages/conversation/a/a/a/a;->d:Lcom/viber/voip/util/b/w;

    invoke-static {}, Lcom/viber/voip/messages/a/b;->d()Lcom/viber/voip/messages/a/a;

    move-result-object v8

    if-nez v0, :cond_6

    const-wide/16 v9, 0x0

    cmp-long v0, v5, v9

    if-lez v0, :cond_7

    :cond_6
    move v2, v1

    :cond_7
    invoke-interface {v8, v3, v4, v2}, Lcom/viber/voip/messages/a/a;->a(JZ)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/a/a/a;->a:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/a/a/a/a;->e:Lcom/viber/voip/util/b/x;

    invoke-virtual {v7, v0, v1, v2}, Lcom/viber/voip/util/b/w;->a(Landroid/net/Uri;Landroid/widget/ImageView;Lcom/viber/voip/util/b/x;)V

    goto/16 :goto_2
.end method

.method public bridge synthetic a(Lcom/viber/voip/ui/b/f;Lcom/viber/voip/ui/b/a/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    check-cast p1, Lcom/viber/voip/messages/conversation/a/a/a;

    check-cast p2, Lcom/viber/voip/messages/conversation/a/a/b/a/b;

    invoke-virtual {p0, p1, p2}, Lcom/viber/voip/messages/conversation/a/a/a/a;->a(Lcom/viber/voip/messages/conversation/a/a/a;Lcom/viber/voip/messages/conversation/a/a/b/a/b;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/a;->c:Lcom/viber/voip/messages/conversation/a/a/a;

    invoke-interface {v0}, Lcom/viber/voip/messages/conversation/a/a/a;->n()Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/a;->b:Lcom/viber/voip/messages/conversation/a/b/a;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/a/a/a;->c:Lcom/viber/voip/messages/conversation/a/a/a;

    invoke-interface {v0, v1}, Lcom/viber/voip/messages/conversation/a/b/a;->b(Lcom/viber/voip/messages/conversation/a/a/a;)V

    .line 90
    :cond_0
    return-void
.end method
