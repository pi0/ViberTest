.class synthetic Lcom/viber/voip/viberout/ui/ar;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 303
    invoke-static {}, Lcom/viber/voip/billing/s;->values()[Lcom/viber/voip/billing/s;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/viber/voip/viberout/ui/ar;->b:[I

    :try_start_0
    sget-object v0, Lcom/viber/voip/viberout/ui/ar;->b:[I

    sget-object v1, Lcom/viber/voip/billing/s;->a:Lcom/viber/voip/billing/s;

    invoke-virtual {v1}, Lcom/viber/voip/billing/s;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    .line 149
    :goto_0
    invoke-static {}, Lcom/viber/voip/viberout/ui/ax;->values()[Lcom/viber/voip/viberout/ui/ax;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/viber/voip/viberout/ui/ar;->a:[I

    :try_start_1
    sget-object v0, Lcom/viber/voip/viberout/ui/ar;->a:[I

    sget-object v1, Lcom/viber/voip/viberout/ui/ax;->a:Lcom/viber/voip/viberout/ui/ax;

    invoke-virtual {v1}, Lcom/viber/voip/viberout/ui/ax;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_1
    :try_start_2
    sget-object v0, Lcom/viber/voip/viberout/ui/ar;->a:[I

    sget-object v1, Lcom/viber/voip/viberout/ui/ax;->b:Lcom/viber/voip/viberout/ui/ax;

    invoke-virtual {v1}, Lcom/viber/voip/viberout/ui/ax;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_2
    :try_start_3
    sget-object v0, Lcom/viber/voip/viberout/ui/ar;->a:[I

    sget-object v1, Lcom/viber/voip/viberout/ui/ax;->c:Lcom/viber/voip/viberout/ui/ax;

    invoke-virtual {v1}, Lcom/viber/voip/viberout/ui/ax;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    :try_start_4
    sget-object v0, Lcom/viber/voip/viberout/ui/ar;->a:[I

    sget-object v1, Lcom/viber/voip/viberout/ui/ax;->d:Lcom/viber/voip/viberout/ui/ax;

    invoke-virtual {v1}, Lcom/viber/voip/viberout/ui/ax;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_4
    :try_start_5
    sget-object v0, Lcom/viber/voip/viberout/ui/ar;->a:[I

    sget-object v1, Lcom/viber/voip/viberout/ui/ax;->e:Lcom/viber/voip/viberout/ui/ax;

    invoke-virtual {v1}, Lcom/viber/voip/viberout/ui/ax;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_5
    :try_start_6
    sget-object v0, Lcom/viber/voip/viberout/ui/ar;->a:[I

    sget-object v1, Lcom/viber/voip/viberout/ui/ax;->f:Lcom/viber/voip/viberout/ui/ax;

    invoke-virtual {v1}, Lcom/viber/voip/viberout/ui/ax;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_6
    return-void

    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_2

    :catch_5
    move-exception v0

    goto :goto_1

    .line 303
    :catch_6
    move-exception v0

    goto :goto_0
.end method
