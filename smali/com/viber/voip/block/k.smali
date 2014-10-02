.class final Lcom/viber/voip/block/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/Runnable;

.field final synthetic c:Lcom/viber/voip/block/n;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Runnable;Lcom/viber/voip/block/n;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/viber/voip/block/k;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/viber/voip/block/k;->b:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/viber/voip/block/k;->c:Lcom/viber/voip/block/n;

    iput-object p4, p0, Lcom/viber/voip/block/k;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 112
    invoke-static {}, Lcom/viber/voip/block/i;->b()Lcom/viber/voip/contacts/c/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/block/k;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/viber/voip/contacts/c/a/a;->a(Ljava/lang/String;)V

    .line 113
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/block/i;->c()Lcom/viber/voip/a/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/a/f;->e()Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 114
    iget-object v0, p0, Lcom/viber/voip/block/k;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/viber/voip/block/k;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/block/k;->c:Lcom/viber/voip/block/n;

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/viber/voip/block/k;->c:Lcom/viber/voip/block/n;

    iget-object v1, p0, Lcom/viber/voip/block/k;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/viber/voip/block/n;->a(Ljava/lang/String;)V

    .line 120
    :cond_1
    return-void
.end method
