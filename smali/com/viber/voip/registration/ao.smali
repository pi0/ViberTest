.class public Lcom/viber/voip/registration/ao;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string/jumbo v0, "GrowSMS"

    sput-object v0, Lcom/viber/voip/registration/ao;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/registration/ao;->d:Ljava/util/HashMap;

    .line 44
    iput-object p2, p0, Lcom/viber/voip/registration/ao;->c:Ljava/lang/String;

    .line 45
    iput-object p1, p0, Lcom/viber/voip/registration/ao;->b:Landroid/content/Context;

    .line 46
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 69
    return-void
.end method
