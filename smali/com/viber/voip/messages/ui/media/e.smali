.class Lcom/viber/voip/messages/ui/media/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/media/DoodleActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/media/DoodleActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 658
    iput-object p1, p0, Lcom/viber/voip/messages/ui/media/e;->a:Lcom/viber/voip/messages/ui/media/DoodleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 661
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/e;->a:Lcom/viber/voip/messages/ui/media/DoodleActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->a(Lcom/viber/voip/messages/ui/media/DoodleActivity;Z)Z

    .line 662
    return-void
.end method
