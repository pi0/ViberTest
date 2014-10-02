.class Lcom/viber/voip/messages/conversation/publicgroup/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/InputFilter;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 896
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/publicgroup/i;->a:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const v6, 0x10101

    .line 900
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 901
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 902
    const-string/jumbo v1, "[ ]"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 915
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 917
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    if-lez v2, :cond_3

    .line 919
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 923
    :cond_0
    iget-object v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/i;->a:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    invoke-static {v2}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->g(Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/viber/voip/messages/conversation/publicgroup/i;->a:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    invoke-static {v3}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->f(Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 924
    iget-object v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/i;->a:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    invoke-static {v2}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->g(Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/viber/voip/messages/conversation/publicgroup/i;->a:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    invoke-static {v3}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->f(Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 925
    iget-object v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/i;->a:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    invoke-static {v2}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->d(Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/viber/voip/util/gj;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 926
    iget-object v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/i;->a:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    invoke-static {v2, v6}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->b(Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;I)I

    .line 927
    iget-object v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/i;->a:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    invoke-static {v2, v6}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->a(Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;I)I

    .line 928
    if-ne p2, p3, :cond_2

    .line 929
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/i;->a:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/i;->a:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    invoke-static {v2}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->d(Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/viber/voip/messages/conversation/publicgroup/i;->a:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    invoke-static {v3}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->d(Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->e(Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 940
    :cond_1
    :goto_0
    return-object v1

    .line 931
    :cond_2
    iget-object v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/i;->a:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->e(Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 936
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/i;->a:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    invoke-static {v0, v6}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->b(Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;I)I

    .line 937
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/i;->a:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    invoke-static {v0, v6}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->a(Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;I)I

    goto :goto_0
.end method
