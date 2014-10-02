.class Lcom/viber/voip/messages/adapters/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/adapters/i;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/adapters/i;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/viber/voip/messages/adapters/j;->a:Lcom/viber/voip/messages/adapters/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/j;->a:Lcom/viber/voip/messages/adapters/i;

    iget-object v0, v0, Lcom/viber/voip/messages/adapters/i;->b:Lcom/viber/voip/messages/adapters/h;

    invoke-virtual {v0}, Lcom/viber/voip/messages/adapters/h;->notifyDataSetChanged()V

    .line 70
    return-void
.end method
