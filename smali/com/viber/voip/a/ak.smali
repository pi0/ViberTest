.class public Lcom/viber/voip/a/ak;
.super Lcom/viber/voip/a/c;
.source "SourceFile"


# static fields
.field public static a:Lcom/viber/voip/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 58
    new-instance v0, Lcom/viber/voip/a/c;

    const-string/jumbo v1, "New_user"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/a/c;-><init>(Ljava/lang/String;Lcom/viber/voip/a/b;)V

    sput-object v0, Lcom/viber/voip/a/ak;->a:Lcom/viber/voip/a/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 61
    const-string/jumbo v0, "Registration"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/a/c;-><init>(Ljava/lang/String;Lcom/viber/voip/a/b;)V

    .line 62
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Lcom/viber/voip/a/x;
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 65
    new-instance v0, Lcom/viber/voip/a/x;

    const-string/jumbo v1, "Activation"

    const-string/jumbo v2, "Change_country"

    move-object v3, p1

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/viber/voip/a/b;)V

    return-object v0
.end method
