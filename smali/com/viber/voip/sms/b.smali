.class Lcom/viber/voip/sms/b;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/viber/voip/sms/a;


# direct methods
.method constructor <init>(Lcom/viber/voip/sms/a;)V
    .locals 2
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/viber/voip/sms/b;->a:Lcom/viber/voip/sms/a;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 56
    const-string/jumbo v0, "samsung"

    const v1, 0x7f0203ed

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/sms/b;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    return-void
.end method
