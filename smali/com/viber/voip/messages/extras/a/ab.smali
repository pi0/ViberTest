.class Lcom/viber/voip/messages/extras/a/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:D

.field final synthetic b:D

.field final synthetic c:Z

.field final synthetic d:Lcom/viber/voip/messages/extras/a/c;

.field final synthetic e:Lcom/viber/voip/messages/extras/a/e;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/extras/a/e;DDZLcom/viber/voip/messages/extras/a/c;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 585
    iput-object p1, p0, Lcom/viber/voip/messages/extras/a/ab;->e:Lcom/viber/voip/messages/extras/a/e;

    iput-wide p2, p0, Lcom/viber/voip/messages/extras/a/ab;->a:D

    iput-wide p4, p0, Lcom/viber/voip/messages/extras/a/ab;->b:D

    iput-boolean p6, p0, Lcom/viber/voip/messages/extras/a/ab;->c:Z

    iput-object p7, p0, Lcom/viber/voip/messages/extras/a/ab;->d:Lcom/viber/voip/messages/extras/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 588
    iget-object v0, p0, Lcom/viber/voip/messages/extras/a/ab;->e:Lcom/viber/voip/messages/extras/a/e;

    iget-wide v1, p0, Lcom/viber/voip/messages/extras/a/ab;->a:D

    iget-wide v3, p0, Lcom/viber/voip/messages/extras/a/ab;->b:D

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/viber/voip/messages/extras/a/e;->a(DD)Lcom/viber/voip/messages/extras/a/d;

    move-result-object v0

    .line 590
    iget-object v1, v0, Lcom/viber/voip/messages/extras/a/d;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 591
    new-instance v0, Lcom/viber/voip/messages/extras/map/d;

    invoke-direct {v0, v5, v5}, Lcom/viber/voip/messages/extras/map/d;-><init>(Lcom/viber/voip/messages/extras/map/j;Lcom/viber/voip/messages/extras/map/i;)V

    .line 592
    iget-wide v1, p0, Lcom/viber/voip/messages/extras/a/ab;->a:D

    iget-wide v3, p0, Lcom/viber/voip/messages/extras/a/ab;->b:D

    new-instance v5, Lcom/viber/voip/messages/extras/a/ac;

    invoke-direct {v5, p0}, Lcom/viber/voip/messages/extras/a/ac;-><init>(Lcom/viber/voip/messages/extras/a/ab;)V

    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/messages/extras/map/d;->a(DDLcom/viber/voip/messages/extras/map/j;)V

    .line 608
    :goto_0
    return-void

    .line 602
    :cond_0
    iget-boolean v1, p0, Lcom/viber/voip/messages/extras/a/ab;->c:Z

    if-eqz v1, :cond_1

    .line 603
    iget-object v1, p0, Lcom/viber/voip/messages/extras/a/ab;->e:Lcom/viber/voip/messages/extras/a/e;

    iget-object v2, v0, Lcom/viber/voip/messages/extras/a/d;->a:Landroid/location/Address;

    iget-object v0, v0, Lcom/viber/voip/messages/extras/a/d;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/viber/voip/messages/extras/a/ab;->d:Lcom/viber/voip/messages/extras/a/c;

    invoke-static {v1, v2, v0, v3}, Lcom/viber/voip/messages/extras/a/e;->a(Lcom/viber/voip/messages/extras/a/e;Landroid/location/Address;Ljava/lang/String;Lcom/viber/voip/messages/extras/a/c;)V

    goto :goto_0

    .line 605
    :cond_1
    iget-object v1, p0, Lcom/viber/voip/messages/extras/a/ab;->d:Lcom/viber/voip/messages/extras/a/c;

    iget-object v2, v0, Lcom/viber/voip/messages/extras/a/d;->a:Landroid/location/Address;

    iget-object v0, v0, Lcom/viber/voip/messages/extras/a/d;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/viber/voip/messages/extras/a/c;->a(Landroid/location/Address;Ljava/lang/String;)V

    goto :goto_0
.end method
