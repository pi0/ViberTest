.class Lcom/viber/voip/messages/adapters/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/conversation/ar;

.field final synthetic b:Lcom/viber/voip/messages/adapters/l;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/adapters/l;Lcom/viber/voip/messages/conversation/ar;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/viber/voip/messages/adapters/m;->b:Lcom/viber/voip/messages/adapters/l;

    iput-object p2, p0, Lcom/viber/voip/messages/adapters/m;->a:Lcom/viber/voip/messages/conversation/ar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14
    .parameter

    .prologue
    const/4 v10, 0x1

    .line 187
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/m;->b:Lcom/viber/voip/messages/adapters/l;

    invoke-static {v0}, Lcom/viber/voip/messages/adapters/l;->a(Lcom/viber/voip/messages/adapters/l;)Landroid/content/Context;

    move-result-object v0

    const-wide/16 v1, 0x0

    iget-object v3, p0, Lcom/viber/voip/messages/adapters/m;->a:Lcom/viber/voip/messages/conversation/ar;

    invoke-virtual {v3}, Lcom/viber/voip/messages/conversation/ar;->i()I

    move-result v3

    iget-object v4, p0, Lcom/viber/voip/messages/adapters/m;->a:Lcom/viber/voip/messages/conversation/ar;

    invoke-virtual {v4}, Lcom/viber/voip/messages/conversation/ar;->j()I

    move-result v4

    iget-object v5, p0, Lcom/viber/voip/messages/adapters/m;->a:Lcom/viber/voip/messages/conversation/ar;

    invoke-virtual {v5}, Lcom/viber/voip/messages/conversation/ar;->k()J

    move-result-wide v5

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v7

    invoke-virtual {v7}, Lcom/viber/voip/ViberApplication;->getBiDiAwareFormatter()Lcom/viber/voip/util/l;

    move-result-object v7

    iget-object v8, p0, Lcom/viber/voip/messages/adapters/m;->b:Lcom/viber/voip/messages/adapters/l;

    invoke-static {v8}, Lcom/viber/voip/messages/adapters/l;->a(Lcom/viber/voip/messages/adapters/l;)Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0c0520

    new-array v11, v10, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/viber/voip/messages/adapters/m;->a:Lcom/viber/voip/messages/conversation/ar;

    invoke-virtual {v13}, Lcom/viber/voip/messages/conversation/ar;->n()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v8, v9, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/viber/voip/util/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, ""

    iget-object v9, p0, Lcom/viber/voip/messages/adapters/m;->b:Lcom/viber/voip/messages/adapters/l;

    invoke-static {v9}, Lcom/viber/voip/messages/adapters/l;->b(Lcom/viber/voip/messages/adapters/l;)Lcom/viber/voip/a/c;

    move-result-object v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/viber/voip/messages/adapters/m;->b:Lcom/viber/voip/messages/adapters/l;

    invoke-static {v9}, Lcom/viber/voip/messages/adapters/l;->b(Lcom/viber/voip/messages/adapters/l;)Lcom/viber/voip/a/c;

    move-result-object v9

    invoke-virtual {v9}, Lcom/viber/voip/a/c;->a()Ljava/lang/String;

    move-result-object v9

    :goto_0
    invoke-static/range {v0 .. v10}, Lcom/viber/voip/util/gn;->a(Landroid/content/Context;JIIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 192
    return-void

    .line 187
    :cond_0
    const-string/jumbo v9, ""

    goto :goto_0
.end method
