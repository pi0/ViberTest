.class final Lcom/viber/voip/block/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/widget/a/d;


# instance fields
.field final synthetic a:Ljava/util/Set;

.field final synthetic b:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/util/Set;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lcom/viber/voip/block/l;->a:Ljava/util/Set;

    iput-object p2, p0, Lcom/viber/voip/block/l;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcelable;)V
    .locals 2
    .parameter

    .prologue
    .line 158
    invoke-static {}, Lcom/viber/voip/block/i;->b()Lcom/viber/voip/contacts/c/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/block/l;->a:Ljava/util/Set;

    invoke-interface {v0, v1}, Lcom/viber/voip/contacts/c/a/a;->b(Ljava/util/Set;)V

    .line 159
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/block/i;->c()Lcom/viber/voip/a/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/a/f;->f()Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 160
    iget-object v0, p0, Lcom/viber/voip/block/l;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/viber/voip/block/l;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 163
    :cond_0
    return-void
.end method
