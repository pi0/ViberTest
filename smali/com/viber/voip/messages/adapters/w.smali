.class Lcom/viber/voip/messages/adapters/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/stickers/ui/c;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/viber/voip/messages/adapters/v;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/adapters/v;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 442
    iput-object p1, p0, Lcom/viber/voip/messages/adapters/w;->b:Lcom/viber/voip/messages/adapters/v;

    iput p2, p0, Lcom/viber/voip/messages/adapters/w;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)Z
    .locals 2
    .parameter

    .prologue
    .line 445
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/w;->b:Lcom/viber/voip/messages/adapters/v;

    invoke-static {v0}, Lcom/viber/voip/messages/adapters/v;->b(Lcom/viber/voip/messages/adapters/v;)I

    move-result v0

    iget v1, p0, Lcom/viber/voip/messages/adapters/w;->a:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
