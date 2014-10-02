.class Lcom/viber/voip/messages/ui/cq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/cp;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/cp;)V
    .locals 0
    .parameter

    .prologue
    .line 363
    iput-object p1, p0, Lcom/viber/voip/messages/ui/cq;->a:Lcom/viber/voip/messages/ui/cp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/viber/voip/messages/ui/cq;->a:Lcom/viber/voip/messages/ui/cp;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/cp;->a:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/MessageComposerView;->l(Lcom/viber/voip/messages/ui/MessageComposerView;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 367
    return-void
.end method
