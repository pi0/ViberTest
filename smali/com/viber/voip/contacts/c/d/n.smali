.class Lcom/viber/voip/contacts/c/d/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/contacts/c/d/au;


# instance fields
.field a:Z

.field final synthetic b:Lcom/viber/voip/contacts/c/d/m;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/c/d/m;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/viber/voip/contacts/c/d/n;->b:Lcom/viber/voip/contacts/c/d/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IZ)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 92
    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/contacts/c/d/n;->a:Z

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    iget-boolean v0, p0, Lcom/viber/voip/contacts/c/d/n;->a:Z

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/n;->b:Lcom/viber/voip/contacts/c/d/m;

    iget-object v0, v0, Lcom/viber/voip/contacts/c/d/m;->a:Landroid/os/Handler;

    new-instance v1, Lcom/viber/voip/contacts/c/d/o;

    invoke-direct {v1, p0}, Lcom/viber/voip/contacts/c/d/o;-><init>(Lcom/viber/voip/contacts/c/d/n;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
