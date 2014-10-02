.class Lcom/viber/voip/util/Reachability$1;
.super Landroid/content/IntentFilter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/util/ft;


# direct methods
.method constructor <init>(Lcom/viber/voip/util/ft;)V
    .locals 1
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/viber/voip/util/Reachability$1;->a:Lcom/viber/voip/util/ft;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 66
    const-string/jumbo v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p0, v0}, Lcom/viber/voip/util/Reachability$1;->addAction(Ljava/lang/String;)V

    .line 67
    const-string/jumbo v0, "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"

    invoke-virtual {p0, v0}, Lcom/viber/voip/util/Reachability$1;->addAction(Ljava/lang/String;)V

    .line 68
    const-string/jumbo v0, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p0, v0}, Lcom/viber/voip/util/Reachability$1;->addAction(Ljava/lang/String;)V

    .line 69
    return-void
.end method
