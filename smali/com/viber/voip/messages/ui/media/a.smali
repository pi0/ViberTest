.class Lcom/viber/voip/messages/ui/media/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/az;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/media/DoodleActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/media/DoodleActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 282
    iput-object p1, p0, Lcom/viber/voip/messages/ui/media/a;->a:Lcom/viber/voip/messages/ui/media/DoodleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 285
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/a;->a:Lcom/viber/voip/messages/ui/media/DoodleActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->a(Lcom/viber/voip/messages/ui/media/DoodleActivity;)Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->d()V

    .line 286
    return-void
.end method
