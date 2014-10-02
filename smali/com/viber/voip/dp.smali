.class Lcom/viber/voip/dp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/ViberApplication;


# direct methods
.method constructor <init>(Lcom/viber/voip/ViberApplication;)V
    .locals 0
    .parameter

    .prologue
    .line 660
    iput-object p1, p0, Lcom/viber/voip/dp;->a:Lcom/viber/voip/ViberApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 663
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "PREF_DELETE_EMPTY_FILES"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    .line 664
    return-void
.end method
