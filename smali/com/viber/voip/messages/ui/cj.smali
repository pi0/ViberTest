.class Lcom/viber/voip/messages/ui/cj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

.field final synthetic b:Lcom/viber/voip/messages/ui/ci;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/ci;Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 954
    iput-object p1, p0, Lcom/viber/voip/messages/ui/cj;->b:Lcom/viber/voip/messages/ui/ci;

    iput-object p2, p0, Lcom/viber/voip/messages/ui/cj;->a:Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 957
    iget-object v0, p0, Lcom/viber/voip/messages/ui/cj;->b:Lcom/viber/voip/messages/ui/ci;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/ci;->a:Lcom/viber/voip/messages/ui/MessageComposerView;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/cj;->a:Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/MessageComposerView;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)V

    .line 958
    return-void
.end method
