.class Lcom/viber/voip/messages/ui/bs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/MessageComposerView;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/MessageComposerView;)V
    .locals 0
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Lcom/viber/voip/messages/ui/bs;->a:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/viber/voip/messages/ui/bs;->a:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/MessageComposerView;->a(Lcom/viber/voip/messages/ui/MessageComposerView;)V

    .line 219
    iget-object v0, p0, Lcom/viber/voip/messages/ui/bs;->a:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/MessageComposerView;->b(Lcom/viber/voip/messages/ui/MessageComposerView;)V

    .line 220
    return-void
.end method
